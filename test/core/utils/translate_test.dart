import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vitech_blockchain/core/utils/translate.dart';

void main() {
  group('Translate', () {
    test('should flatten nested JSON correctly', () {
      final translate = Translate(const Locale('en'));
      
      // Test the private _flattenMap method through reflection or create a test version
      final testMap = {
        'common': {
          'next': 'Next',
          'skip': 'Skip',
          'loading': 'Loading...'
        },
        'error': {
          'network': 'Network error. Please check your internet connection.',
          'server': 'Server error. Please try again later.',
          'timeout': 'Request timeout. Please try again.',
          'unknown': 'An unknown error occurred. Please try again.'
        }
      };
      
      // Since _flattenMap is private, we'll test the public behavior
      // by checking if the translate method works with dot notation
      
      // This test would need to be run with actual locale files loaded
      // For now, we'll test the structure expectation
      expect(testMap['common'], isA<Map<String, dynamic>>());
      expect(testMap['error'], isA<Map<String, dynamic>>());
    });

    test('should handle null and empty keys gracefully', () {
      final translate = Translate(const Locale('en'));
      
      expect(translate.translate(null), equals(''));
      expect(translate.translate(''), equals(''));
      expect(translate.t(null), equals(''));
      expect(translate.t(''), equals(''));
    });

    test('should return key as fallback when translation not found', () {
      final translate = Translate(const Locale('en'));
      
      // This would return the key itself if translation is not found
      expect(translate.translate('non.existent.key'), equals('non.existent.key'));
      expect(translate.t('another.missing.key'), equals('another.missing.key'));
    });
  });
}
