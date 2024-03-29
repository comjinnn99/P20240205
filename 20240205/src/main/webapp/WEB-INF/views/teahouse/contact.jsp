<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Page Header Start -->
  <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container text-center py-5">
      <h1 class="display-2 text-dark mb-4 animated slideInDown">Contact Us</h1>
      <nav aria-label="breadcrumb animated slideInDown">
        <ol class="breadcrumb justify-content-center mb-0">
          <li class="breadcrumb-item">
            <a href="home">Home</a>
          </li>
          <li class="breadcrumb-item">
            <a href="#">Pages</a>
          </li>
          <li class="breadcrumb-item text-dark" aria-current="page">Contact</li>
        </ol>
      </nav>
    </div>
  </div>
  <!-- Page Header End -->


  <!-- Contact Start -->
  <div class="container-xxl contact py-5">
    <div class="container">
      <div class="section-title text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
        <p class="fs-5 fw-medium fst-italic text-primary">Contact Us</p>
        <h1 class="display-6">If You Have Any Query, Please Contact Us</h1>
      </div>
      <div class="row g-5 mb-5">
        <div class="col-md-4 text-center wow fadeInUp" data-wow-delay="0.3s">
          <div class="btn-square mx-auto mb-3">
            <i class="fa fa-envelope fa-2x text-white"></i>
          </div>
          <p class="mb-2">info@example.com</p>
          <p class="mb-0">support@example.com</p>
        </div>
        <div class="col-md-4 text-center wow fadeInUp" data-wow-delay="0.4s">
          <div class="btn-square mx-auto mb-3">
            <i class="fa fa-phone fa-2x text-white"></i>
          </div>
          <p class="mb-2">+012 345 67890</p>
          <p class="mb-0">+012 345 67890</p>
        </div>
        <div class="col-md-4 text-center wow fadeInUp" data-wow-delay="0.5s">
          <div class="btn-square mx-auto mb-3">
            <i class="fa fa-map-marker-alt fa-2x text-white"></i>
          </div>
          <p class="mb-2">123 Street</p>
          <p class="mb-0">New York, USA</p>
        </div>
      </div>
      <div class="row g-5">
        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
          <h3 class="mb-4">Need a functional contact form?</h3>
          <p class="mb-4">
            The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste
            the files, add a little code and you're done.
            <a href="https://htmlcodex.com/contact-form">Download Now</a>
            .
          </p>

          <form id="messageForm" action="messagesend" method="post">
            <div class="row g-3">
              <div class="col-md-6">
                <div class="form-floating">
                  <input type="text" class="form-control" id="messageWriterName" name="messageWriterName" placeholder="Your Name">
                  <label for="name">Your Name</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-floating">
                  <input type="email" class="form-control" id="messageWriterEmail" name="messageWriterEmail" placeholder="Your Email">
                  <label for="email">Your Email</label>
                </div>
              </div>
              <div class="col-12">
                <div class="form-floating">
                  <input type="text" class="form-control" id="messageTitle" name="messageTitle" placeholder="Title">
                  <label for="subject">Title</label>
                </div>
              </div>
              <div class="col-12">
                <div class="form-floating">
                  <textarea class="form-control" placeholder="Leave a message here" id="messageSubject" name="messageSubject" style="height: 120px">Message</textarea>
                  <label for="messageSubject"></label>
                </div>
              </div>
              <div class="col-12">
                <button class="btn btn-primary rounded-pill py-3 px-5" type="button" onclick="messageSend()">Send Message</button>
              </div>
            </div>
          </form>

        </div>
        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
          <div class="h-100">
            <iframe class="w-100 rounded"
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001156.4288297426!2d-78.01371936852176!3d42.72876761954724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1603794290143!5m2!1sen!2sbd"
              frameborder="0" style="height: 100%; min-height: 300px; border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Contact End -->
  <script type="text/javascript">
  	function messageSend(){
  		let url = "ajaxSendMessage";
  		let formData = new FormData(messageForm);
      fetch(url, {
        method: 'POST',
        body: formData
      })
        .then((res) => res.text())
        .then((text) => callProcess(text));
  	}

    function callProcess(str){
      if (str == "Yes") {
        alert("메세지가 정상적으로 전송 되었다.");
      } else {
        alert("메세지 전송이 실패했습니다");
      }
    }
  </script>
</body>
</html>