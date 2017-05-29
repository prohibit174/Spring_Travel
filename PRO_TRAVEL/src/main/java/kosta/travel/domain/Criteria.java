package kosta.travel.domain;

public class Criteria {

  private int page; //현재 조회하는 페이지의 번호
  private int perPageNum; //한 페이지당 출력하는 데이터의 개수

  public Criteria() {
    this.page = 1;
    //페이지당 보여지는 글개수
    this.perPageNum = 3;
  }

  public void setPage(int page) {

    if (page <= 0) {
      this.page = 1;
      return;
    }

    this.page = page;
  }

  public void setPerPageNum(int perPageNum) {

    if (perPageNum <= 0 || perPageNum > 100) {
      this.perPageNum = 10;
      return;
    }

    this.perPageNum = perPageNum;
  }

  public int getPage() {
    return page;
  }

  //페이지에서 시작하는 글
  // method for MyBatis SQL Mapper -
  public int getPageStart() {

    return (this.page - 1) * perPageNum;
  }

  // method for MyBatis SQL Mapper
  public int getPerPageNum() {

    return this.perPageNum;
  }

  @Override
  public String toString() {
    return "Criteria [page=" + page + ", "
        + "perPageNum=" + perPageNum + "]";
  }
}
