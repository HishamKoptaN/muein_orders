import 'dart:ui';

import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  static const String routeName = "SignUpView";

  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003A46),
      body: Center(
        child: Container(
          width: 375,
          height: 847,
          decoration: BoxDecoration(
            color: const Color(0xFF003A46),
            borderRadius: BorderRadius.circular(24),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // الخلفيات والزخارف
                _BackgroundDecorations(),
                // محتوى الصفحة
                _SignUpContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BackgroundDecorations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Rectangle 7
        Positioned(
          left: -77,
          top: -7,
          child: Container(
            width: 208,
            height: 101,
            decoration: BoxDecoration(
              color: const Color(0xFF003A45),
              borderRadius: BorderRadius.circular(24),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(),
            ),
          ),
        ),
        // Rectangle 8
        Positioned(
          left: -77,
          top: -71,
          child: Container(
            width: 208,
            height: 101,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 58, 69, 0.42),
              borderRadius: BorderRadius.circular(24),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(),
            ),
          ),
        ),
        // Rectangle 34626650
        Positioned(
          left: -177,
          top: -140,
          child: Transform.rotate(
            angle: 112.44 * 3.1416 / 180,
            child: Container(
              width: 408.39,
              height: 247,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(128, 187, 166, 0.39),
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SignUpContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Status Bar
        const SizedBox(height: 0),
        _StatusBar(),
        // شعار
        const SizedBox(height: 12),
        Container(
          width: 234,
          height: 117,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/لوجوز مبين-01.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 18),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: ListView(
              children: [
                _buildInputField('الاسم الاول'),
                const SizedBox(height: 16),
                _buildInputField('الاسم الاخير'),
                const SizedBox(height: 16),
                _buildInputField('البريد الإلكتروني'),
                const SizedBox(height: 16),
                _buildInputField('رقم الهاتف'),
                const SizedBox(height: 16),
                _buildInputField('الدولة'),
                const SizedBox(height: 16),
                _buildInputField('كلمة المرور', isPassword: true),
                const SizedBox(height: 16),
                _buildInputField('تأكيد كلمة المرور', isPassword: true),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF83BEA8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'إنشاء حساب',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInputField(String label, {bool isPassword = false}) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.19),
        borderRadius: BorderRadius.circular(14),
      ),
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        obscureText: isPassword,
        textAlign: TextAlign.right,
        style: const TextStyle(
          fontFamily: 'Almarai',
          fontSize: 16,
          color: Color.fromRGBO(255, 255, 255, 0.57),
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: label,
          hintStyle: const TextStyle(
            fontFamily: 'Almarai',
            fontSize: 16,
            color: Color.fromRGBO(255, 255, 255, 0.57),
          ),
        ),
      ),
    );
  }
}

class _StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // الوقت
          Container(
            width: 54,
            height: 21,
            alignment: Alignment.center,
            child: const Text(
              '9:41',
              style: TextStyle(
                fontFamily: 'SF UI Text',
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: Colors.white,
                letterSpacing: -0.5,
              ),
            ),
          ),
          // أيقونات البطارية والشبكة (شكل مبسط)
          Row(
            children: [
              Icon(Icons.signal_cellular_alt, color: Colors.white, size: 18),
              const SizedBox(width: 4),
              Icon(Icons.wifi, color: Colors.white, size: 18),
              const SizedBox(width: 4),
              Icon(Icons.battery_full, color: Colors.white, size: 18),
            ],
          ),
        ],
      ),
    );
  }
}
