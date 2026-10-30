/**
 * Ninho — ponto de entrada da aplicação.
 * Sprint 1: ecrã provisório. Os ecrãs reais ficam em src/screens (Sprint 2).
 */
import React from 'react';
import {SafeAreaView, StyleSheet, Text, View} from 'react-native';

function App(): React.JSX.Element {
  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.box}>
        <Text style={styles.title}>Ninho</Text>
        <Text style={styles.subtitle}>
          Comunicação segura para crianças — em construção (Sprint 1)
        </Text>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {flex: 1, backgroundColor: '#FFFFFF'},
  box: {flex: 1, alignItems: 'center', justifyContent: 'center', padding: 24},
  title: {fontSize: 36, fontWeight: '700', color: '#1B2A41'},
  subtitle: {fontSize: 16, color: '#5B6B7F', textAlign: 'center', marginTop: 8},
});

export default App;
