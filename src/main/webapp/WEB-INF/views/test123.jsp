
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Popup Demo</title>
    <style type="text/css">
        h1{
            font-family: 'Oswald', sans-serif;
            font-size: 30px;
            color: #216182;
        }
        label {
            display: block;
            margin-top: 20px;
            letter-spacing: 2px;
        }
        form {
            margin: 0 auto;
            width: 459px;
        }
        input, textarea {
            width: 439px;
            height: 27px;
            background-color: #efefef;
            border-radius: 6px;
            border: 1px solid #dedede;
            padding: 10px;
            margin-top: 3px;
            font-size: 0.9em;
            color: #3a3a3a;
        }
        input:focus, textarea:focus{
            border: 1px solid #97d6eb;
        }

        textarea{
            height: 60px;
            background-color: #efefef;
        }
        #submit{
            width: 127px;
            height: 48px;
            text-align: center;
            border: none;
            margin-top: 20px;
            cursor: pointer;
        }
        #submit:hover{
            color: #fff;
            background-color: #216282;
            opacity: 0.9;
        }
        #cancel {
            width: 127px; height: 48px;
            text-align: center;
            border: none;
            margin-top: 20px;
            cursor: pointer;
        }
        #cancel:hover{
            color: #fff;
            background-color: #216282;
            opacity: 0.9;
        }

        .modal {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            opacity: 0;
            visibility: hidden;
            transform: scale(1.1);
            transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s;
        }
        .modal-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 1rem 1.5rem;
            width: 500px;
            height: 350px;
            border-radius: 0.5rem;
        }
        .close-button {
            float: right;
            width: 1.5rem;
            line-height: 1.5rem;
            text-align: center;
            cursor: pointer;
            border-radius: 0.25rem;
            background-color: lightgray;
        }
        .close-button:hover {
            background-color: darkgray;
        }
        .show-modal {
            opacity: 1;
            visibility: visible;
            transform: scale(1.0);
            transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
        }

    </style>

    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
</head>


<body>
<h1>레어어 팝업창 띄우기</h1>
<!-- 버튼 -->
<button class="trigger">이메일 보내기</button>

<!-- 팝업 될 레이어 -->
<div class="modal">
    <div class="modal-content">
        <span class="close-button">&times;</span>
        <h1 class="title">메일 보내기</h1>
        <form action="#post.php" method="POST">
            <label for="email">Email</label>
            <input type="email" id="email" placeholder="Your email" required="required">
            <label for="textarea">ㅇㅇ</label>
            <textarea name="message" id="textarea" placeholder="Test Message" required="required"></textarea>
            <input type="button" id="cancel" value="취소">
            <input type="submit" id="submit" value="보내기">
        </form>
    </div>
</div>

<script type="text/javascript">
    var modal = document.querySelector(".modal");
    var trigger = document.querySelector(".trigger");
    var closeButton = document.querySelector(".close-button");
    var cancelButton = document.querySelector("#cancel");

    //console.log(modal);

    function toggleModal() {
        modal.classList.toggle("show-modal");
    }

    function windowOnClick(event) {
        if (event.target === modal) {
            toggleModal();
        }
    }

    trigger.addEventListener("click", toggleModal);
    closeButton.addEventListener("click", toggleModal);
    cancel.addEventListener("click", toggleModal);
    window.addEventListener("click", windowOnClick);
</script>

</body>
</html>