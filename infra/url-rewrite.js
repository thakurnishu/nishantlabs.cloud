function handler(event) {
    var request = event.request;
    var uri = request.uri;
    
    // If URI ends with a slash, append index.html
    if (uri.endsWith('/')) {
        request.uri += 'index.html';
    }
    // If URI doesn't have a file extension and doesn't end with slash
    else if (!uri.includes('.') && uri !== '/') {
        request.uri += '/index.html';
    }
    // Root path should serve index.html
    else if (uri === '/') {
        request.uri = '/index.html';
    }
    
    return request;
}
