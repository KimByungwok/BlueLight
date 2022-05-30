var _chart = document.querySelector('.chart');
var _chartBar = document.querySelectorAll('.chart-bar');
var color = ['#9986dd','#fbb871','#bd72ac','#f599dc'] //색상
var newDeg = []; //차트 deg

function insertAfter(newNode, referenceNode) {
    referenceNode.parentNode.insertBefore(newNode, referenceNode.nextSibling);
}

function chartLabel(){
    var _div = document.createElement('div');
    _div.className = 'chart-total';
    _div.innerHTML = `<span class="chart-total-num">Total:<br> 3,135</span>
                    <span class="chart-total-text1">Automobile</span>
                    <span class="chart-total-text2">Disablility</span>
                    <span class="chart-total-text3">Life</span>
                    <span class="chart-total-text4">Property</span>`;
    insertAfter(_div,_chart);
}

function chartDraw(){
    for( var i=0;i<_chartBar.length;i++){
        var _num = _chartBar[i].dataset.deg
        newDeg.push( _num )
    }

    var num = newDeg.length - newDeg.length;
    _chart.style.background = 'conic-gradient(#9986dd '+
        newDeg[num]+'deg, #fbb871 '+
        newDeg[num]+'deg '+newDeg[num+1]+'deg, #bd72ac '+
        newDeg[1]+'deg '+newDeg[2]+'deg, #f599dc '+
        newDeg[2]+'deg )';

    chartLabel();
}

chartDraw();