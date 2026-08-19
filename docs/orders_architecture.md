# نظام عرض طلبات التوثيق (Orders System)

## 📋 نظرة عامة

نظام متكامل لعرض وإدارة طلبات التوثيق مع دعم:
- العمل بدون إنترنت (Offline-first)
- التخزين المحلي (Drift Database)
- الفلترة التفاعلية (Reactive Filtering)
- إدارة الحالة المركزية (Bloc Pattern)

---

## 🏗️ المعمارية

```
┌─────────────────────────────────────────────────────────────┐
│                    Presentation Layer                       │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐       │
│  │ OrdersView   │  │OrdersContent │  │OrdersFilter  │       │
│  │              │  │   Widget     │  │   Widget     │       │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘       │
└─────────┼─────────────────┼─────────────────┼─────────────┘
          │                 │                 │
          └─────────────────┼─────────────────┘
                            │
┌───────────────────────────▼─────────────────────────────────┐
│                    Bloc Layer                               │
│  ┌─────────────────────────────────────────────────────┐   │
│  │                  OrdersBloc                          │   │
│  │  ┌──────────────┐  ┌──────────────────────────────┐ │   │
│  │  │  getOrders   │  │       filterChanged          │ │   │
│  │  │  (Load API)  │  │  (Apply Filter to Local Data)│ │   │
│  │  └──────┬───────┘  └──────────────┬───────────────┘ │   │
│  │         │                           │                │   │
│  │         └───────────┬───────────────┘                │   │
│  │                     │                                │   │
│  │  ┌──────────────────▼──────────────────────────┐   │   │
│  │  │  OrdersState.loaded                        │   │   │
│  │  │  - ordersRes: API Response                 │   │   │
│  │  │  - filteredOrders: Filtered List           │   │   │
│  │  │  - selectedUploadStatus: Active Filter    │   │   │
│  │  └────────────────────────────────────────────┘   │   │
│  └─────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────┘
                              │
                              │ uses
                              ▼
┌─────────────────────────────────────────────────────────────┐
│                    Domain Layer                             │
│  ┌─────────────────────────────────────────────────────┐   │
│  │           OrdersResEntity (Freezed)                │   │
│  │  - orders: List<OrderEntity>                       │   │
│  │  - individualDocs: List<DocEntity>                │   │
│  │                                                     │   │
│  │  Extension: OrderEntityX.matchesStatus()           │   │
│  └─────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────┘
                              │
                              │ uses
                              ▼
┌─────────────────────────────────────────────────────────────┐
│                    Data Layer                               │
│  ┌──────────────────────────┐  ┌──────────────────────────┐  │
│  │  OrdersUseCases          │  │  OrdersFilterService   │  │
│  │  (API Calls)             │  │  (Local DB Filtering)  │  │
│  └──────────┬───────────────┘  └──────────┬─────────────┘  │
│             │                             │                │
│             ▼                             ▼                │
│  ┌──────────────────────────┐  ┌──────────────────────────┐  │
│  │  Remote API              │  │  AppDatabase (Drift)   │  │
│  │  (Salla/Backend)         │  │  - cachedDocsTable      │  │
│  │                          │  │  - watchDoc() Stream  │  │
│  └──────────────────────────┘  └──────────────────────────┘  │
└─────────────────────────────────────────────────────────────┘
```

---

## 📦 نماذج البيانات (Data Models)

### 1. OrdersResEntity (Freezed Union)

```dart
@freezed
sealed class OrdersResEntity with _$OrdersResEntity {
  const factory OrdersResEntity.orders({
    required List<OrderEntity> orders,
    required MetaEntity meta,
  }) = _OrdersEntity;
  
  const factory OrdersResEntity.individualDocs({
    required List<DocEntity> docs,
  }) = _IndividualDocsEntity;
}
```

### 2. OrderEntity

```dart
@freezed
abstract class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    required int id,
    required int sallaOrderId,
    required String printedName,
    required String executionNumber,
    required List<DocEntity> docs,
  }) = _OrderEntity;
}
```

### 3. DocEntity

```dart
@freezed
abstract class DocEntity with _$DocEntity {
  const factory DocEntity({
    required int id,
    String? imageOne,
    String? imageTwo,
    String? videoOne,
    String? videoTwo,
    DocStatusEntity? docStatus,
    // ... other fields
  }) = _DocEntity;
}
```

---

## 🔄 تدفق البيانات (Data Flow)

### سيناريو 1: تحميل الطلبات لأول مرة

```
1. User يفتح شاشة الطلبات
        ↓
2. OrdersViewController.init() → getIt<OrdersBloc>().add(
     OrdersEvent.getOrders(subCategoryId: x, loadMore: false)
   )
        ↓
3. OrdersBloc يستقبل Event
   - يُظهر loading state
   - يستدعي ordersUseCases.getOrders()
        ↓
4. API يُرجع البيانات
        ↓
5. OrdersBloc يُخزن في Local DB (Drift)
        ↓
6. OrdersBloc يُطبق الفلترة (إذا كان هناك فلتر نشط)
   - extract orders من ordersRes
   - filterService.filterOrders()
        ↓
7. emit OrdersState.loaded(
     ordersRes: ordersRes,
     filteredOrders: filteredOrders,
     selectedUploadStatus: currentStatus
   )
        ↓
8. BlocBuilder يعيد بناء UI
        ↓
9. OrdersContentWidget يعرض filteredOrders
```

### سيناريو 2: المستخدم يغير الفلتر

```
1. User يختار "معلق" من الفلتر
        ↓
2. OrdersFilterWidget.onFilterChanged(FileUploadStatus.pending)
        ↓
3. OrdersViewController.onFilterChanged(FileUploadStatus.pending)
        ↓
4. getIt<OrdersBloc>().add(
     OrdersEvent.filterChanged(status: FileUploadStatus.pending)
   )
        ↓
5. OrdersBloc يستقبل Event (لا يحتاج API!)
   - يأخذ ordersRes الحالية من state
   - يُطبق الفلترة الجديدة
        ↓
6. emit OrdersState.loaded(
     ordersRes: ordersRes,  // نفس البيانات
     filteredOrders: newFilteredOrders,  // جديد
     selectedUploadStatus: FileUploadStatus.pending  // جديد
   )
        ↓
7. BlocBuilder يعيد بناء UI فوراً
        ↓
8. OrdersListWidget يعرض الطلبات المُعلقة فقط
```

### سيناريو 3: تحديث حالة رفع (Background Upload)

```
1. Background Service يرفع ملف
        ↓
2. يُحدّث Drift Table (cachedDocsTable)
   - uploadStatus = "uploaded"
        ↓
3. Drift Stream يرسل تحديث (Reactive)
        ↓
4. OrdersBloc (مستقبل future improvement)
   - يمكن إعادة تطبيق الفلترة
        ↓
5. UI يتحدث تلقائياً
```

---

## 🎛️ إدارة الفلترة (Filter Management)

### أنواع الفلاتر (FileUploadStatus)

| الحالة | الوصف | الاستخدام |
|--------|-------|----------|
| `init` | جديد / لم يُرفع بعد | الطلبات بدون ملفات |
| `pending` | معلق / في قائمة الانتظار | جاهز للرفع |
| `uploading` | جاري الرفع | حالياً يرتفع |
| `uploaded` | تم الرفع | مكتمل |
| `failed` | فشل الرفع | يحتاج إعادة محاولة |

### منطق الفلترة (Filter Logic)

```dart
// داخل OrdersFilterService
Future<List<OrderEntity>> filterOrders({
  required List<OrderEntity> orders,
  FileUploadStatus? selectedUploadStatus,
}) async {
  if (selectedUploadStatus == null) {
    return orders; // لا فلتر
  }
  
  // فلترة حسب الحالة
  final filtered = <OrderEntity>[];
  for (final order in orders) {
    final matches = await _orderMatchesStatus(order, selectedUploadStatus);
    if (matches) filtered.add(order);
  }
  return filtered;
}

Future<bool> _orderMatchesStatus(
  OrderEntity order, 
  FileUploadStatus status
) async {
  // 1. التحقق من Local DB
  final cached = await getCachedDoc(order.id);
  
  // 2. إذا لم يُوجد → يُعتبر init
  if (cached == null) return status == FileUploadStatus.init;
  
  // 3. التحقق من حالة الملفات
  for (final file in cached.files ?? []) {
    if (file.status == status) return true;
  }
  
  // 4. التحقق من حالة الموقع
  if (cached.location?.status == status) return true;
  
  return false;
}
```

---

## 📂 هيكل الملفات (File Structure)

```
lib/features/orders/
├── domain/
│   ├── entities/
│   │   └── orders_res_entity.dart    # OrderEntity, DocEntity + Extension
│   └── usecases/
│       └── orders_use_cases.dart       # API Calls
├── data/
│   └── repo/
│       └── orders_repo_impl.dart
├── present/
│   ├── bloc/
│   │   ├── orders_bloc.dart            # State Management + Filtering Logic
│   │   ├── orders_event.dart           # getOrders, filterChanged
│   │   └── orders_state.dart           # loaded(filteredOrders, selectedUploadStatus)
│   └── views/
│       ├── orders_view.dart            # Main Screen + BlocBuilder
│       ├── orders_view_controller.dart # Controller (Bloc interactions)
│       └── widgets/
│           ├── orders_content_widget.dart    # Displays filteredOrders
│           ├── orders_list_widget.dart       # List UI
│           ├── orders_filter_widget.dart     # Filter UI
│           └── orders_filter_service.dart    # Filter Logic + DB Access
└── cached_docs/                         # Local Storage
    └── data/
        └── datasources/
            └── local/
                └── drift/
                    ├── app_database.dart       # Drift DB
                    └── cached_docs_table.dart  # Table Schema
```

---

## 🎯 أفضل الممارسات (Best Practices)

### ✅ افعل:

1. **استخدم الـ Bloc كمصدر للحقيقة**
   ```dart
   // جيد
   BlocBuilder<OrdersBloc, OrdersState>(
     builder: (context, state) {
       final filtered = state.maybeWhen(
         loaded: (_, filtered, __) => filtered,
         orElse: () => [],
       );
       return OrdersList(filteredOrders: filtered);
     },
   );
   ```

2. **لا تستخدم FutureBuilder للفلترة**
   ```dart
   // سيء - يسبب وميض وإعادة تحميل
   FutureBuilder<List<OrderEntity>>(...)
   
   // جيد - reactive وsmooth
   BlocBuilder<OrdersBloc, OrdersState>(...)
   ```

3. **حافظ على الفلترة في مكان واحد**
   ```dart
   // OrdersBloc هو المسؤول الوحيد عن الفلترة
   // OrdersContentWidget يعرض فقط
   ```

4. **استخدم Extension Methods للمنطق المشترك**
   ```dart
   extension OrderEntityX on OrderEntity {
     bool matchesStatus(FileUploadStatus status) { ... }
   }
   ```

### ❌ لا تفعل:

1. **لا تُجري استعلامات DB في UI**
   ```dart
   // سيء
   FutureBuilder(
     future: database.getCachedDocs(), // في Widget!
   )
   ```

2. **لا تُكرر منطق الفلترة**
   ```dart
   // سيء - نفس المنطق في Widget وBloc
   ```

3. **لا تستخدم setState() للفلترة**
   ```dart
   // سيء - يكسر Reactive Pattern
   setState(() { selectedStatus = newStatus; });
   ```

---

## 🔧 التحسينات المستقبلية (Future Improvements)

### 1. Reactive DB Stream
```dart
// دمج Drift Stream مع Bloc
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  StreamSubscription? _dbSubscription;
  
  void _initDbWatcher() {
    _dbSubscription = database.watchAllDocs().listen((docs) {
      // إعادة تطبيق الفلترة تلقائياً
      add(const RefreshOrders());
    });
  }
}
```

### 2. Pagination مع فلترة
```dart
// دعم تحميل المزيد مع الحفاظ على الفلتر
OrdersEvent.getOrders(
  subCategoryId: id,
  loadMore: true,
  // الحفاظ على selectedUploadStatus من الحالة الحالية
)
```

### 3. Caching للفلترة
```dart
// تخزين نتائج الفلترة لتجنب إعادة الحساب
@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.loaded({
    required OrdersResEntity ordersRes,
    required List<OrderEntity> filteredOrders,
    required FileUploadStatus? selectedUploadStatus,
    @Default(false) bool isFilterCached,
  }) = _Loaded;
}
```

---

## 📊 مقارنة: Before vs After

| الجانب | الطريقة القديمة | الطريقة الجديدة |
|--------|----------------|----------------|
| **مصدر البيانات** | API → FutureBuilder | Bloc → State |
| **الفلترة** | في UI + DB queries | في Bloc فقط |
| **الأداء** | وميض + بطيء | سلس + سريع |
| **إعادة الاستخدام** | صعب | سهل |
| **الصيانة** | معقد | منظم |
| **الاختبار** | صعب | سهل (Bloc test) |

---

## 📝 الخلاصة

هذا النظام يتبع **Reactive Architecture**:

1. **Single Source of Truth**: `OrdersBloc` يحتوي الحالة الكاملة
2. **Unidirectional Data Flow**: Events → Bloc → State → UI
3. **Separation of Concerns**: 
   - UI = عرض فقط
   - Bloc = إدارة الحالة والفلترة
   - Service = الوصول للبيانات

**النتيجة**: نظام سريع، سلس، وسهل الصيانة.
