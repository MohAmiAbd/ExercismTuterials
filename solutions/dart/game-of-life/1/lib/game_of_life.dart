typedef Matrix = List<List<int>>;

class GameOfLife {
  late Matrix _matrix;

  GameOfLife(List<List<int>> matrix) : _matrix = matrix;

  void tick() {
    if (_matrix.isEmpty || _matrix[0].isEmpty) return;
    final int row = _matrix.length;
    final int col = _matrix[0].length;
    Matrix matrix2 = List.generate(row, (_) => List.filled(col, 0));

    // review members of matrix.

    for (int i = 0; i < row; i++) {
      for (int j = 0; j < col; j++) {
        int liveNeighbors = 0;

        // Neighbors loop.

        for (int x = i - 1; x <= i + 1; x++) {
          for (int y = j - 1; y <= j + 1; y++) {
            if (x == i && y == j) continue;
            if (x < 0 || x >= row || y < 0 || y >= col) continue;
            if (_matrix[x][y] == 1) liveNeighbors++;
          }
        }

        if (liveNeighbors == 3) {
          matrix2[i][j] = 1;
        } else if (liveNeighbors == 2) {
          matrix2[i][j] = _matrix[i][j];
        } else {
          matrix2[i][j] = 0;
        }
      }
    }
    _matrix = matrix2;
  }

  Matrix matrix() {
    return _matrix;
  }
}
