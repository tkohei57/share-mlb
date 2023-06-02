document.addEventListener('DOMContentLoaded', function(){
  // ヘッダーに関する部分
  const headerBtns = document.querySelectorAll(".header-btns");
  headerBtns.forEach((headerBtn) => {
    headerBtn.addEventListener('mouseover', function() {
      this.setAttribute("style", "background-color: #666666;");
    });
    headerBtn.addEventListener('mouseout', function() {
      this.removeAttribute("style", "background-color: #666666;");
    });
  });

  // 記事一覧表示に関する部分
  const articles = document.querySelectorAll(".articles-area");
  const titles = document.querySelectorAll(".title-link");
  const teams = document.querySelectorAll(".teams");
  const postUsers = document.querySelectorAll(".users");
  
  articles.forEach((article) => {
    article.addEventListener('mouseover', function() {
      this.setAttribute("style", "box-shadow: 0 10px 25px 0 rgba(0, 0, 0, 0.5);");
    });
    article.addEventListener('mouseout', function() {
      this.removeAttribute("style", "box-shadow: 0 10px 25px 0 rgba(0, 0, 0, 0.5);");
    });
  });

  titles.forEach((title) => {
    title.addEventListener("mouseover", function() {
      this.setAttribute("style", "text-decoration: underline;")
    });
    title.addEventListener("mouseout", function() {
      this.removeAttribute("style", "text-decoration: underline;")
    });
  });

  teams.forEach((team) => {
    team.addEventListener("mouseover", function() {
      this.setAttribute("style", "text-decoration: underline;")
    });
    team.addEventListener("mouseout", function() {
      this.removeAttribute("style", "text-decoration: underline;")
    });
  });

  postUsers.forEach((postUser) => {
    postUser.addEventListener("mouseover", function() {
      this.setAttribute("style", "text-decoration: underline;")
    });
    postUser.addEventListener("mouseout", function() {
      this.removeAttribute("style", "text-decoration: underline;")
    });
  });

  //記事詳細ページの編集・削除ボタンとコメントボタン
  const articleBtns = document.querySelectorAll(".edit-destroy-btn");
  const commentBtns = document.querySelectorAll(".comment-submit-btn");
  articleBtns.forEach((articleBtn) => {
    articleBtn.addEventListener("mouseover", function() {
      this.setAttribute("style", "background-color: #666666;");
    });
    articleBtn.addEventListener("mouseout", function() {
      this.removeAttribute("style", "background-color: #666666;");
    });
  });
  commentBtns.forEach((commentBtn) => {
    commentBtn.addEventListener("mouseover", function() {
      this.setAttribute("style", "background-color: #EEEEEE;");
    });
    commentBtn.addEventListener("mouseout", function() {
      this.removeAttribute("style", "background-color: #EEEEEE;");
    });
  });

  //検索機能に関する部分
  const searchBtns = document.querySelectorAll(".search-btn");
  searchBtns.forEach((searchBtn) => {
    searchBtn.addEventListener("mouseover", function() {
      this.setAttribute("style", "background-color: white;");
    });
    searchBtn.addEventListener("mouseout", function() {
      this.removeAttribute("style", "background-color: white;");
    });
  });

  //コメントのユーザー名に対する処理
  const commentUsers = document.querySelectorAll(".comment-user-link");
  commentUsers.forEach((commentUser) => {
    commentUser.addEventListener("mouseover", function() {
      this.setAttribute("style", "text-decoration: underline;")
    });
    commentUser.addEventListener("mouseout", function() {
      this.removeAttribute("style", "text-decoration: underline;")
    });
  });

  // トップページに戻るボタン
  const backBtns = document.querySelectorAll(".back-btns");
  backBtns.forEach((backBtn) => {
    backBtn.addEventListener("mouseover", function() {
      this.setAttribute("style", "background-color: #DDDDDD;");
    });
    backBtn.addEventListener("mouseout", function() {
      this.removeAttribute("style", "background-color: #DDDDDD;");
    });
  });

  // 投稿ボタン
  const postBtns = document.querySelectorAll(".post-btn");
  postBtns.forEach((postBtn) => {
    postBtn.addEventListener("mouseover", function() {
      this.setAttribute("style", "background-color: #666666;");
    });
    postBtn.addEventListener("mouseout", function() {
      this.removeAttribute("style", "background-color: #666666;");
    });
  });

  //新規登録・ログインボタン
  const deviseBtns = document.querySelectorAll(".devise-btns");
  deviseBtns.forEach((deviseBtn) => {
    deviseBtn.addEventListener("mouseover", function() {
      this.setAttribute("style", "background-color: #666666;");
    });
    deviseBtn.addEventListener("mouseout", function() {
      this.removeAttribute("style", "background-color: #666666;");
    });
  });
});