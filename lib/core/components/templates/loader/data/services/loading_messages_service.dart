class LoadingMessagesService {
  /// Fetches the logo URL shown by the loader. Returns null when there is no logo.
  Future<String?> fetchLogoUrl() async {
    return null;
  }

  /// Fetches a list of messages for a given screen type.
  Future<List<String>?> fetchMessagesForScreen(String screenType) async {
    return [
      'Carregando...',
      'Por favor, aguarde...',
    ];
  }
}
