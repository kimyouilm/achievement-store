/* upload img script */
let img = document.getElementById('img');
let noimage = img.src;

function handleFileSelect(evt) {
    let file = evt.target.files[0]; // FileList object, files[0] is your file
    console.log(file);
    img.src = window.URL.createObjectURL(file);
}

document.getElementById('file').addEventListener('change',
    handleFileSelect, false);

document.querySelector('#removephoto').addEventListener('click',
    function(e) {
        document.getElementById('file').value = "";
        img.src = noimage;
        e.preventDefault();
        console.log(img.src);
    });
document.querySelector('#img').addEventListener('click', function(e) {
    performClick(document.getElementById('file'));
    e.preventDefault();
});
document.querySelector('#addphoto').addEventListener('click',
    function(e) {
        performClick(document.getElementById('file'));
        e.preventDefault();
    });

function performClick(node) {
    let evt = document.createEvent("MouseEvents");
    evt.initEvent("click", true, false);
    node.dispatchEvent(evt);
}


function ham_CheckFunc() {
    let myHam = $("#form-myHam").val();
    let betHam = $("#form-goal-ham").val();
    let eRegPass = false;

    if (betHam === "") { // 빈 값 검사
        document.getElementById("ownHam_chk").innerHTML = "최소 0ham 이상을 입력해 주세요.";
        $("#ownHam_chk").css('color', 'red');
    } else {
        eRegPass = true;
    }

    myHam = parseInt(myHam);
    betHam = parseInt(betHam);
    if (eRegPass) {
        if (betHam > myHam) {
            document.getElementById("ownHam_chk").innerHTML = "보유하신 ham 보다 큰 수를 입력 하셨습니다.";
            $("#ownHam_chk").css('color', 'red');
        } else {
            document.getElementById("ownHam_chk").innerHTML = "해당 ham을 겁니다.";
            $("#ownHam_chk").css('color', 'green');
        }
    }
}