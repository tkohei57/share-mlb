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

  // フォローボタン
  const followBtns = document.querySelectorAll(".follow-btn");
  followBtns.forEach((followBtn) => {
    followBtn.addEventListener("mouseover", function() {
      this.setAttribute("style", "background-color: #CCCCCC;");
    });
    followBtn.addEventListener("mouseout", function() {
      this.removeAttribute("style", "background-color: #CCCCCC;");
    });
  });

  // フォロー解除ボタン
  const unFollowBtns = document.querySelectorAll(".unfollow-btn");
  unFollowBtns.forEach((unFollowBtn) => {
    unFollowBtn.addEventListener("mouseover", function() {
      this.setAttribute("style", "background-color: #666666;");
    });
    unFollowBtn.addEventListener("mouseout", function() {
      this.removeAttribute("style", "background-color: #666666;");
    });
  });

  // フォローしているユーザーを選択した際に陰影をつける
  const followBoxes = document.querySelectorAll(".follow-box")
  followBoxes.forEach((followBox) => {
    followBox.addEventListener('mouseover', function() {
      this.setAttribute("style", "box-shadow: 0 10px 25px 0 rgba(0, 0, 0, 0.5);");
    });
    followBox.addEventListener('mouseout', function() {
      this.removeAttribute("style", "box-shadow: 0 10px 25px 0 rgba(0, 0, 0, 0.5);");
    });
  });

  // フォロー・フォロワーの表示
  const profileFollowingBtns = document.querySelectorAll("#show-followings");
  const profileFollowerBtns = document.querySelectorAll("#show-followers");
  const followings = document.getElementById("user-followings");
  const followers = document.getElementById("user-followers");
  profileFollowingBtns.forEach((profileFollowingBtn) => {
    profileFollowingBtn.addEventListener("mouseover", function() {
      this.setAttribute("style", "background-color: #CCCCCC;");
    });
    profileFollowingBtn.addEventListener("mouseout", function() {
      this.removeAttribute("style", "background-color: #CCCCCC;");
    });
    profileFollowingBtn.addEventListener("click", function() {
      followings.setAttribute("style", "display: block;");
      followers.setAttribute("style", "display: none;");
    });
  });
  profileFollowerBtns.forEach((profileFollowerBtn) => {
    profileFollowerBtn.addEventListener("mouseover", function() {
      this.setAttribute("style", "background-color: #CCCCCC;");
    });
    profileFollowerBtn.addEventListener("mouseout", function() {
      this.removeAttribute("style", "background-color: #CCCCCC;");
    });
    profileFollowerBtn.addEventListener("click", function() {
      followings.setAttribute("style", "display: none;");
      followers.setAttribute("style", "display: block;");
    });
  });
  
  // 記事本文の一部選択
  // function selection(event) {
  //   const boldBtn = document.getElementById("bold-btn")
  //   let selectArea = event.target.value.substring(
  //     event.target.selectionStart,
  //     event.target.selectionEnd
  //   );
  //   boldBtn.addEventListener("click", function() {
  //     console.log(selectArea);
  //   });
  // };
  
  // const textArea = document.getElementById('content-form');
  // textArea.addEventListener("select", selection);
  
  

  

});