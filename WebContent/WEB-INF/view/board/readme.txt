-- 생성하실 정보 
vo : com.study.board.vo : Board
DAO : com.study.board.dao : BoardDaoJDBC
      + getBoardList()
      + getBoard(int bo_no)
      + insertBoard(Connection conn,Board board)
      + updateBoard(Connection conn,Board board)
      + getBoardCount(Connection conn )
          
Service : com.study.board.service : BoardServiceImpl
       +getBoardList()
       +getBoard(int bo_no)
       +registBoard(Board board)
       +modifyBoard(Board board)