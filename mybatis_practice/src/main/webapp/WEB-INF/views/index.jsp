<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>kwang hwang</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/album/">

    <!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- Favicons -->
<!-- <link rel="apple-touch-icon" href="img/icon1.jpg" sizes="180x180"> -->
<!-- <link rel="icon" href="img/icon1.jpg" sizes="32x32" type="image/png"> -->
<!-- <link rel="icon" href="img/icon1.jpg" sizes="16x16" type="image/png"> -->
<!-- <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3"> -->
<link rel="icon" href="img/icon1.jpg">



<meta name="theme-color" content="#7952b3">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
  </head>
  <body>
<header>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-md-7 py-4">
          <h4 class="text-white">About</h4>
          <p class="text-muted">
          	왕자 공주 ❤300❤
          </p>
        </div>
        <div class="col-sm-4 offset-md-1 py-4">
          <h4 class="text-white">Contact</h4>
          <ul class="list-unstyled">
            <li><span class = "text-white">공주님 </span>
				<a href="https://www.instagram.com/ye_ri__ny/" target = "_blank" class="text-white">Instagram</a>
			</li>
            <li><span class = "text-white">왕자님 </span>
				<a href="https://www.instagram.com/hakang11/" target = "_blank" class="text-white">Instagram</a>
			</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container">
      <!-- home icon -->
      <a href = "/" class="navbar-brand d-flex align-items-center">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
        <strong>Album</strong>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</header>

<main>

  <section class="py-5 text-center container">
      <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">❤<span id = "days"></span>일❤</h1>
					<p class="lead text-muted">
						사랑하는 우리애기 300일 축하해여
						<br>
						이거만들면서 계속 너 생각했다.<br>
						별거아니지만 한번쯤은 애기랑 나만의 사이트 만들어보고 싶었다능<br>
						이쁘게 봐줘여 미니공주
					</p>
					 <p>
						<a href = "/addForm" class="btn btn-primary my-2">add album</a>
					</p> 
			 	</div>
    </div> 
  </section>
  <div class="album py-5 bg-light">
    <div class="container">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" id = "card_area">
      </div>
    </div>
  </div>

</main>

 <footer class="text-muted py-5">
  <div class="container">
    <p class="mb-1">강화광, 황예린 홈페이지임</p>
  </div>
</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	</script>
<script src="js/jquery.js"></script>
<script src = "js/common.js"></script>
<script src = "js/index.js"></script>
</body>
</html>