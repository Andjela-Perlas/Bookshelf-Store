/***************** SEARCH ANIMATION ************************/

function buttonUp(){
   let valux = $('.sb-search-input').val(); 
   valux = $.trim(valux).length;
   if(valux !== 0){
    $('.sb-search-submit').css('z-index','99');
} else{
    $('.sb-search-input').val(''); 
    $('.sb-search-submit').css('z-index','-999');
}
}


$(document).ready(function(){

    let submitIcon = $('.sb-icon-search');
    let submitInput = $('.sb-search-input');
    let searchBox = $('.sb-search');
    let isOpen = false;

    $(document).mouseup(function(){
        if(isOpen == true){
            submitInput.val('');
            $('.sb-search-submit').css('z-index','-999');
            submitIcon.click();
        }
    });

    submitIcon.mouseup(function(){
        return false;
    });

    searchBox.mouseup(function(){
        return false;
    });

    submitIcon.click(function(){
        if(isOpen == false){
            searchBox.addClass('sb-search-open');
            isOpen = true;
        } else {
            searchBox.removeClass('sb-search-open');
            isOpen = false;
        }
    });


    /****************SEARCH**********************/

    $("#search").keyup(function(e){
        e.preventDefault();
        let value = $("#search").val();
        
        $.ajax({
            url: 'index.php?page=search',
            method: 'POST',
            dataType: "json",
            data: {
                value: value
            },
            success: function(data){

                printBooks(data);

            },
            error: function(xhr, status, statusText){
                console.log(xhr);
                console.log(statusText);
            }
        });
    });
    


    $(document).on("click", ".category", function(e){
        e.preventDefault();

        let id = $(this).data("id");

        $.ajax({
            url: "index.php?page=category",
            method: "POST",
            data: {
                id: id
            },
            success: function(data){
                printBooks(data);
            },
            error: function(xhr, status, statusText){
                console.log(xhr);
                console.log(statusText);
            }
        });
    });
});



$(document).on("click", "#addBookBtn", function(e){
    e.preventDefault();
    let userID = $("#userID").val();
    let priceSite = $("#price-site").text();
    let categoryID = $("#categoryID").val();
    
    $.ajax({
        url: "index.php?page=insertCart",
        method: "POST",
        dataType: "json",
        data: {
            cartBtn: true,
            userID: userID, 
            priceSite: priceSite,
            categoryID: categoryID
        },
        success: function(data){
            let alertDiv = document.querySelector('#successMessage');
            let message = document.querySelector('#msg');

            alertDiv.classList.remove('invisible');
            alertDiv.classList.add('alert-success');
            message.textContent = data;
            setTimeout(function () {
                alertDiv.classList.add('invisible')
            }, 2500);
            refreshCartNumber();
        },
        error: function(xhr, status, statusText) {
            console.log(xhr);
            console.log(statusText);
        }
    });
});



function refreshCartNumber(){

    $.ajax({
        url: "index.php?page=getCartNumber",
        method: "POST",
        dataType: "json",
        success: function(data){
            let html="";
            for(let book of data){
                html += `<i class="fas fa-shopping-cart"> (${ book.sum })</i>`;
            }
            $(".cartNumber").html(html);
        },
        error: function(xhr, status, statusText){
            console.log(xhr);
            console.log(statusText);
        }
    });
}



function printBooks(data){

    let html = "";
    for(let book of data){
        html +=`<div class="col-lg-4 col-md-6 mb-4">
        <div class="shadow bg-white rounded">
        <div class="card h-100 ">
        <a href="index.php?page=book&id=${ book.bookID}"><img class="card-img-top" src="${ book.imgSrc}" alt="${ book.imgAlt}"></a>
        <div class="card-body">
        <div class="card-title">
        <h2 class="font-weight-light">${ book.name}</h2>
        </div>
        <h5  class="cl-dark font-weight-normal mt-4">${ book.price} dinara</h5>
        <p class="card-text mt-3">${ book.description.substring(0, 100) }...</p>
        </div>
        <div class="card-footer"> 
        <a class="btn btn-orange text-white font-weight-light" href="index.php?page=book&id=${ book.bookID}" role="button">Detaljnije</a>
        </div>
        </div>
        </div>
        </div> `;
    }
    $("#books").html(html);
}



