class LoadingMessagesService {
  /// Fetches a list of messages for a given screen type from Firestore.
  Future<List<String>?> fetchMessagesForScreen(String screenType) async {
    return [
      'Carregando...',
      'Por favor, aguarde...',
    ];
  }
}
