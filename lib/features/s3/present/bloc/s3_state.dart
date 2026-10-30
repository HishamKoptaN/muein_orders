import '../../domain/entities/s3_item_entity.dart';

abstract class S3State {
  const S3State();
}

class S3Initial extends S3State {
  const S3Initial();
}

class S3Loading extends S3State {
  const S3Loading();
}

class S3Loaded extends S3State {
  final List<S3ItemEntity> items;
  const S3Loaded(this.items);
}

class S3Error extends S3State {
  final String message;
  const S3Error(this.message);
}
