var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - 
// use its "alt" text as a caption
var img = document.getElementsByName('myImg');
var captionText = document.getElementById("caption");

img[0].onclick = function(){    // Java img
    this.alt = "<h1>자바란?</h1>"
             + "<p style='font-style: italic;'>자바는 썬 마이크로시스템즈에서 개발한 대표적인 객체지향 프로그래밍 언어입니다.<br>"
             + "자바의 가장 중요한 특징은 운영체제에 독립적이라는 것입니다. 자바로 작성된 프로그램은 운영체제 종류에<br>"
             + "관계없이 실행이 가능하기 때문에, 운영체제에 따라 프로그램을 변경하지 않고도 실행이 가능합니다.</p><br>"
             + "<h2>자바언어의 특징</h2>"
             + "<ul>"   
             + "<li>자바는 'Java Virtual Machine' 위에서 실행되기에 운영체제에 관계없이 실행될 수 있으므로 독립적이며, 이식성이 높다고 할 수 있다.</li>"
             + "<li>하나 이상의 기능을 객체로 만들어서, 이러한 객체들을 결합하여 하나의 프로그램을 만드는 객체지향언어(OOP)이다.</li>"
             + "<li>Thread객체 상속 또는 Runnable인터페이스를 구현하여 동시에 여러가지 작업을 할 수 있거나, 대용량 작업을 효율적으로 처리할 수 있는 멀티스레드 환경을 지원한다.</li>"
             + "<li>자바는 Open Source 언어이다. 그렇기에 자바를 이용해 만들어진 라이브러리가 많고, 필요에 따른 라이브러리를 이용해 시간비용을 줄이면서 어플리케이션을 만들 수 있다.</li>"
             + "</ul>";
	showModal(this.alt);
}

img[1].onclick = function(){    // sql img
    this.alt = "<h1>SQL (Structured Query Language)</h1>"
             + "<p style='font-style: italic;'>SQL은 관계형 데이터베이스 관리 시스템(RDBMS)의 데이터를 관리하기 위한 목적을 가지는 프로그래밍 언어입니다.<br>"
             + "관계형 데이터 베이스 관리 시스템에서 자료의 검색과 관리, 데이터베이스 스키마 생성과 수정, 데이터 베이스 접근 조정 관리를<br>"
             + "위해 고안되었습니다. 많은 수의 데이터 베이스 관련 프로그램들이 SQL을 표준으로 채택하고 있습니다.</p><br>"
             + "<p>현재까지 저희는 SQLDeveloper를 이용하여 데이터베이스에 테이블을 생성하고, 데이터를 CRUD하는 등의 작업을 해보았습니다.<br>"
             + "앞으로 데이터베이스를 이용하여 직접적인 DB모델링, Java를 이용한 DB연동을 학습할 계획입니다.</p><br>"
             + "<h2>SQL의 특징</h2>"
             + "<ul>"
             + "<li>여타 프로그래밍 언어들처럼 절차적인 개별 단위로 처리되기보다, 데이터의 집합 단위로 처리됩니다.</li>"
             + "<li>선언적 언어 ; 실제 데이터들이 어떻게 처리되는지에 대한 세부적인 과정은 SQL문장을 작성하는 사람은 신경쓰지 않아도 된다는 장점이 있습니다.</li>"
             + "<li>공인된 기관의 표준 SQL 문법이 존재하기에, DBMS의 종류에 얽매이지 않고 사용할 수 있는 장점이 있습니다.</li>"
             + "</ul>";
	showModal(this.alt);
}
img[2].onclick = function(){    // html&css img
    this.alt = "<h2>CSS와 HTMl, 처음에는 재미있고, 보다 쉬울 줄 알았습니다.</h2>"
             + "<h2>혹시 실제로 사이트 만들어보셨나요?</h2><br>"
             + "<h1>겁.나. 어렵습니다.</h1>";
	showModal(this.alt);
}
img[3].onclick = function(){    // javascript img
    this.alt = "<h1>java script</h1>";
	showModal(this.alt);
}
img[4].onclick = function(){    // jQuery img
    this.alt = "<h1>jQuery</h1>";
	showModal(this.alt);
}
img[5].onclick = function(){    // Servlet & jsp img
    this.alt = "<h1>Servlet & jsp </h1>";
	showModal(this.alt);
}
img[6].onclick = function(){    // Spring framework img
    this.alt = "<h1>Spring</h1>";
	showModal(this.alt);
}
img[7].onclick = function(){    // my life img
    this.alt = "<h1>사이트를 만들면서, class와 id들을 중구난방식으로 사용했고,"
             + "W3, 검색 등을 이용해 넣고싶은 기능이나 효과들을 찾고, 적용하는데 시간이 오래걸렸습니다.";
             + "또한 반응형도 추가하지 않았고, 넣지 못한 효과도 있어 아쉬움이 많았습니다ㅠㅠ</h1>"
	showModal(this.alt);
}

function showModal(alt){
	modal.style.display = "block";
	captionText.innerHTML = alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
  modal.style.display = "none";
}