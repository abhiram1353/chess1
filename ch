<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Chess Game</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    text-align: center;
  }
  #board {
    width: 400px;
    margin: 20px auto;
    border: 2px solid #333;
    border-radius: 5px;
    background-color: #fff;
  }
  .square {
    width: 50px;
    height: 50px;
    float: left;
  }
  .black {
    background-color: #769656;
  }
  .white {
    background-color: #eeeed2;
  }
</style>
</head>
<body>

<div id="board"></div>

<script>
// Initial board setup (8x8 grid)
const board = [
  ['r', 'n', 'b', 'q', 'k', 'b', 'n', 'r'],
  ['p', 'p', 'p', 'p', 'p', 'p', 'p', 'p'],
  ['', '', '', '', '', '', '', ''],
  ['', '', '', '', '', '', '', ''],
  ['', '', '', '', '', '', '', ''],
  ['', '', '', '', '', '', '', ''],
  ['P', 'P', 'P', 'P', 'P', 'P', 'P', 'P'],
  ['R', 'N', 'B', 'Q', 'K', 'B', 'N', 'R']
];

// Render the chessboard
function renderBoard() {
  const boardElement = document.getElementById('board');
  boardElement.innerHTML = '';
  for (let i = 0; i < 8; i++) {
    for (let j = 0; j < 8; j++) {
      const square = document.createElement('div');
      square.className = 'square ' + ((i + j) % 2 === 0 ? 'white' : 'black');
      if (board[i][j] !== '') {
        square.textContent = board[i][j];
      }
      boardElement.appendChild(square);
    }
  }
}

// Initial render
renderBoard();
</script>

</body>
</html>
