import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart';

import '../../../../core/di/dependency_injection.dart';
import '../bloc/profile_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const String routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>()..add(const ProfileEvent.getProfile()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('الملف الشخصي'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.pop(),
          ),
        ),
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (profile) => _ProfileContent(profile: profile),
              error: (message) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error, size: 64, color: Colors.red),
                    const SizedBox(height: 16),
                    Text(message),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
                      },
                      child: const Text('إعادة المحاولة'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ProfileContent extends StatelessWidget {
  final dynamic profile;

  const _ProfileContent({required this.profile,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Avatar
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: profile.avatar != null
                  ? NetworkImage(profile.avatar)
                  : null,
              child: profile.avatar == null
                  ? Text(
                      profile.name.isNotEmpty ? profile.name[0].toUpperCase() : 'U',
                      style: const TextStyle(fontSize: 32),
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 24),

          // Profile Information
          _buildInfoCard(
            icon: Icons.person,
            title: 'الاسم',
            value: profile.name,
          ),
          _buildInfoCard(
            icon: Icons.email,
            title: 'البريد الإلكتروني',
            value: profile.email,
          ),
          if (profile.phone != null)
            _buildInfoCard(
              icon: Icons.phone,
              title: 'رقم الهاتف',
              value: profile.phone,
            ),
          if (profile.address != null)
            _buildInfoCard(
              icon: Icons.location_on,
              title: 'العنوان',
              value: profile.address,
            ),
        ],
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}
