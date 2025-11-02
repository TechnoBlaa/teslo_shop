import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Términos y Condiciones'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Aviso de Privacidad y Términos de Uso',
              style: textStyles.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            
            Text(
              'Última actualización: ${DateTime.now().year}',
              style: textStyles.bodyMedium?.copyWith(
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 30),

            _buildSection(
              title: '1. Aceptación de Términos',
              content: '''Al crear una cuenta en Teslo Shop, usted acepta estar sujeto a estos términos y condiciones. Si no está de acuerdo con alguna parte de estos términos, no debe usar nuestra aplicación.''',
              textStyles: textStyles,
            ),

            _buildSection(
              title: '2. Recopilación de Datos',
              content: '''Recopilamos la siguiente información personal:
• Nombre completo
• Dirección de correo electrónico
• Contraseña (encriptada)
• Información de uso de la aplicación

Esta información es utilizada para proporcionar y mejorar nuestros servicios.''',
              textStyles: textStyles,
            ),

            _buildSection(
              title: '3. Uso de Datos Personales',
              content: '''Sus datos personales serán utilizados para:
• Gestionar su cuenta de usuario
• Procesar sus pedidos
• Enviar notificaciones importantes
• Mejorar nuestros servicios
• Cumplir con obligaciones legales

Nunca compartiremos su información con terceros sin su consentimiento explícito.''',
              textStyles: textStyles,
            ),

            _buildSection(
              title: '4. Seguridad',
              content: '''Implementamos medidas de seguridad apropiadas para proteger su información personal contra accesos no autorizados, alteración o destrucción.''',
              textStyles: textStyles,
            ),

            _buildSection(
              title: '5. Derechos del Usuario',
              content: '''Usted tiene derecho a:
• Acceder a sus datos personales
• Corregir información inexacta
• Solicitar la eliminación de sus datos
• Revocar su consentimiento en cualquier momento''',
              textStyles: textStyles,
            ),

            _buildSection(
              title: '6. Contacto',
              content: '''Si tiene preguntas sobre estos términos o sobre el manejo de sus datos personales, puede contactarnos a través de:
Email: privacy@tesloshop.com''',
              textStyles: textStyles,
            ),

            const SizedBox(height: 40),

            Center(
              child: ElevatedButton(
                onPressed: () => context.pop(),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text('Entendido'),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required String content,
    required TextTheme textStyles,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textStyles.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: textStyles.bodyMedium?.copyWith(
              height: 1.6,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}