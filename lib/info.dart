import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Info App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const BMIInfoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BMIInfoPage extends StatelessWidget {
  const BMIInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Info App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Image(image: AssetImage('assets/image/bmi.jpg')),

              SectionTitle(title: 'What is BMI?'),
              SectionText(
                text:
                'Body Mass Index (BMI) is a measure that uses your height and weight to work out if your weight is healthy. The BMI calculation divides an adult\'s weight in kilograms by their height in meters squared.',
              ),
              SectionTitle(title: 'How is BMI Calculated?'),
              SectionText(
                text:
                'The formula for BMI is:\nBMI = Weight (kg) / Height (m)^2\n\nExample:\nWeight = 70 kg\nHeight = 1.75 m\n\nBMI = 70 / 1.75^2 = 22.86',
              ),
              SectionTitle(title: 'BMI Categories'),
              SectionText(
                text:
                'BMI ranges for different weight categories:\n\n- Underweight: BMI less than 18.5\n- Normal weight: BMI 18.5 to 24.9\n- Overweight: BMI 25 to 29.9\n- Obesity: BMI 30 or greater',
              ),
              SectionTitle(title: 'Why is BMI Important?'),
              SectionText(
                text:
                'BMI is an indicator of body fatness and helps in assessing whether an individual is underweight, normal weight, overweight, or obese. It can help identify potential health risks linked to being under or overweight.',
              ),
              SectionTitle(title: 'Limitations of BMI'),
              SectionText(
                text:
                'Age and Gender: BMI does not account for differences in age, gender, or muscle mass.\n\nBody Composition: It does not distinguish between muscle and fat.\n\nDistribution of Fat: It does not account for the distribution of fat on the body.',
              ),
              SectionTitle(title: 'Health Risks Associated with High BMI'),
              SectionText(
                text:
                'High Blood Pressure\nType 2 Diabetes\nHeart Disease\nStroke\nCertain Types of Cancer',
              ),
              SectionTitle(title: 'Health Risks Associated with Low BMI'),
              SectionText(
                text:
                'Malnutrition\nOsteoporosis\nAnemia\nDecreased Immune Function',
              ),
              SectionTitle(title: 'Tips for Maintaining a Healthy BMI'),
              SectionText(
                text:
                '1. Balanced Diet: Eat a variety of foods, including vegetables, fruits, whole grains, and lean proteins.\n2. Regular Exercise: Aim for at least 150 minutes of moderate aerobic activity or 75 minutes of vigorous activity each week.\n3. Healthy Lifestyle: Avoid smoking and limit alcohol consumption.\n4. Regular Check-ups: Monitor your BMI and overall health regularly.',
              ),
              SectionTitle(title: 'Conclusion'),
              SectionText(
                text:
                'Understanding BMI and its implications can help you maintain a healthy lifestyle and reduce the risk of chronic diseases. Always consult with healthcare professionals for personalized advice and recommendations.',
              ),
              SectionTitle(title: 'Note'),
              SectionText(
                text:
                'This app provides information for educational purposes only and is not a substitute for professional medical advice.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}

class SectionText extends StatelessWidget {
  final String text;

  const SectionText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, height: 1.5),
      ),
    );
  }
}
