import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exp2a(),
    ),
  );
}

class Exp2a extends StatelessWidget {
const Exp2a({super.key});

static const Color primaryColor = Color(0xFF6366F1);
static const Color secondaryColor = Color(0xFF8B5CF6);
static const Color accentColor = Color(0xFF06B6D4);
static const Color backgroundColor = Color(0xFFF5F7FF);
static const Color textColor = Color(0xFF1E293B);

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: backgroundColor,

appBar: AppBar(
title: const Text(
'Experiment 2A',
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
centerTitle: true,
elevation: 0,
backgroundColor: primaryColor,
foregroundColor: Colors.white,
),

body: SingleChildScrollView(
padding: const EdgeInsets.all(20),

child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// Page Heading
const Text(
'Flutter Widgets',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: textColor,
),
),

const SizedBox(height: 8),

const Text(
'Explore the building blocks of Flutter UI.',
style: TextStyle(
fontSize: 15,
color: Color(0xFF64748B),
height: 1.5,
),
),

const SizedBox(height: 28),

// Text Widget
_buildSectionLabel('TEXT WIDGET'),

const SizedBox(height: 12),

Container(
width: double.infinity,
padding: const EdgeInsets.all(20),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(16),
border: Border.all(
color: const Color(0xFFE2E8F0),
),
boxShadow: [
BoxShadow(
color: primaryColor.withValues(alpha: 0.06),
blurRadius: 16,
offset: const Offset(0, 6),
),
],
),
child: const Row(
children: [
Icon(
Icons.text_fields_rounded,
color: primaryColor,
size: 30,
),
SizedBox(width: 16),
Expanded(
child: Text(
'This is a Text widget.',
style: TextStyle(
fontSize: 17,
fontWeight: FontWeight.w500,
color: textColor,
),
),
),
],
),
),

const SizedBox(height: 28),

// Container Widget
_buildSectionLabel('CONTAINER WIDGET'),

const SizedBox(height: 12),

Container(
height: 130,
width: double.infinity,
alignment: Alignment.center,
decoration: BoxDecoration(
gradient: const LinearGradient(
colors: [
primaryColor,
secondaryColor,
],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
),
borderRadius: BorderRadius.circular(20),
boxShadow: [
BoxShadow(
color: primaryColor.withValues(alpha: 0.25),
blurRadius: 18,
offset: const Offset(0, 8),
),
],
),
child: const Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(
Icons.dashboard_rounded,
color: Colors.white,
size: 38,
),
SizedBox(height: 10),
Text(
'Container Widget',
style: TextStyle(
color: Colors.white,
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
],
),
),

const SizedBox(height: 28),

// Icon Widget
_buildSectionLabel('ICON WIDGET'),

const SizedBox(height: 12),

Container(
width: double.infinity,
padding: const EdgeInsets.symmetric(
vertical: 28,
horizontal: 20,
),
decoration: BoxDecoration(
color: const Color(0xFFE0F7FA),
borderRadius: BorderRadius.circular(20),
),
child: const Column(
children: [
Icon(
Icons.flutter_dash,
size: 76,
color: Color(0xFF0891B2),
),
SizedBox(height: 12),
Text(
'Flutter Icon',
style: TextStyle(
fontSize: 17,
fontWeight: FontWeight.bold,
color: Color(0xFF155E75),
),
),
],
),
),

const SizedBox(height: 28),

// Card and ListTile
_buildSectionLabel('CARD & LISTTILE'),

const SizedBox(height: 12),

Card(
color: Colors.white,
elevation: 3,
shadowColor: secondaryColor.withValues(alpha: 0.12),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
side: const BorderSide(
color: Color(0xFFE9E7FF),
),
),
child: const ListTile(
contentPadding: EdgeInsets.symmetric(
horizontal: 18,
vertical: 12,
),
leading: CircleAvatar(
backgroundColor: Color(0xFFEDE9FE),
child: Icon(
Icons.widgets_rounded,
color: secondaryColor,
),
),
title: Text(
'Card and ListTile',
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
color: textColor,
),
),
subtitle: Padding(
padding: EdgeInsets.only(top: 5),
child: Text(
'Reusable widgets for structured layouts.',
style: TextStyle(
fontSize: 13,
color: Color(0xFF64748B),
),
),
),
trailing: Icon(
Icons.arrow_forward_ios_rounded,
size: 18,
color: primaryColor,
),
),
),

const SizedBox(height: 32),

// Result Section
Container(
width: double.infinity,
padding: const EdgeInsets.all(20),
decoration: BoxDecoration(
color: const Color(0xFFDCFCE7),
borderRadius: BorderRadius.circular(16),
border: Border.all(
color: const Color(0xFF86EFAC),
),
),
child: const Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Icon(
Icons.check_circle_rounded,
color: Color(0xFF15803D),
size: 28,
),
SizedBox(width: 14),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'EXPERIMENT RESULT',
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.bold,
letterSpacing: 0.8,
color: Color(0xFF166534),
),
),
SizedBox(height: 8),
Text(
'Different Flutter widgets were displayed successfully.',
style: TextStyle(
fontSize: 15,
height: 1.5,
color: Color(0xFF166534),
),
),
],
),
),
],
),
),

const SizedBox(height: 24),
],
),
),
);
}

// Reusable section heading
static Widget _buildSectionLabel(String title) {
return Row(
children: [
Container(
width: 4,
height: 20,
decoration: BoxDecoration(
color: primaryColor,
borderRadius: BorderRadius.circular(4),
),
),
const SizedBox(width: 10),
Text(
title,
style: const TextStyle(
fontSize: 14,
fontWeight: FontWeight.bold,
letterSpacing: 1.1,
color: textColor,
),
),
],
);
}
}
