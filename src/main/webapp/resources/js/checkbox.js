// 물품 기부 체크 박스 텍스트 에어리어
// function itemcheckbox(checkbox) {
//
//     // 1. 텍스트 박스 element 찾기
//     const textbox_elem = document.getElementById('itemdonation');
//
//     // 1. 체크박스 요소 찾기
//     const livecheck = document.getElementById("livecheckbox");
//
//     // 2-1. 체크박스 선택여부 체크
//     // 2-2. 체크박스 선택여부에 따라 텍스트박스 활성화/비활성화
//     textbox_elem.disabled = checkbox.checked ? false : true;
//     livecheck.disabled = checkbox.checked ? true : false;
//
//
//     // 3. 텍스트박스 활성화/비활성화 여부에 따라
//     // - 텍스트박스가 비활성화 된 경우 : 텍스트박스 초기화
//     // - 텍스트박스가 활성화 된 경우 : 포커스 이동
//     if (textbox_elem.disabled) {
//         textbox_elem.value = null;
//     } else {
//         textbox_elem.focus();
//     }
// }
//
// 현장 기부 체크 박스 텍스트 에어리어
//
// function livecheckbox(checkbox) {
//
//     // 1. 체크박스 요소 찾기
//     const checkbox_date1 = document.getElementById("date1");
//     const checkbox_date2 = document.getElementById("date2");
//     const checkbox_date3 = document.getElementById("date3");
//
//     const livedonationcheckbox = document.getElementById("itemcheckbox");
//
//     // 2-1. 체크박스 선택여부 체크
//     // 2-2. 체크박스 선택여부에 따라 텍스트박스 활성화/비활성화
//     checkbox_date1.disabled = checkbox.checked ? false : true;
//     checkbox_date2.disabled = checkbox.checked ? false : true;
//     checkbox_date3.disabled = checkbox.checked ? false : true;
//
//     livedonationcheckbox.disabled = checkbox.checked ? true : false;
// }
//

function doOpenCheck(checkbox) {
    var obj = document.getElementsByName("option1");
    for (var i = 0; i < obj.length; i++) {
        if (obj[i] !== checkbox) {
            obj[i].checked = false;
        }
    }
}


