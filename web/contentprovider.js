/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


let contentprovider = function () {
    let xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
            if ((xhr.status >= 200 && xhr.status < 300) || xhr.status == 304) {
                let jobj = JSON.parse(xhr.responseText);
                for (x in jobj.user) {
                    let a = document.createElement("option");
                    a.appendChild(document.createTextNode(jobj.user[x]));
                    a.setAttribute("value", x);
                    let elm = document.getElementById("type");
                    elm.appendChild(a);
                }
            } else {
                alert("Request Unsucessful");
            }
        }
    };
    xhr.open("get", "http://localhost:8080/olp/fc/?action=model&page=selectprovider", true);
    xhr.send(null);
}
