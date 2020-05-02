$(document).ready(function() {

    $("#btnCart").click(function(e){
        e.preventDefault();

        let userID = $("#userID").val();

        $.ajax({
            url: "index.php?page=getCart",
            method: "POST",
            dataType: "json",
            data: {
                btnCart: true,
                userID: userID
            },
            success: function(data){
                printProducts(data);
            },
            error: function(xhr, status, statusText){
                console.log(xhr);
                console.log(statusText);
            }
        });
    });




    $(document).on("click", ".deleteBtn", function(e){
        e.preventDefault();

        let cartID = $(this).data("id");

        $.ajax({
            url: "index.php?page=deleteCart",
            method: "POST",
            dataType: "json",
            data: {
                deleteBtn: true,
                cartID: cartID
            },
            success: function(data){

                refreshAmount();

                refreshView();

                refreshCartNumber();
            },
            error: function(xhr, status, statusText){
                console.error(xhr);
                console.log(statusText);
            }
        });
    });
});



function refreshAmount(){

    $.ajax({

        url: "index.php?page=getAmount",
        method: "POST",
        dataType: "json",
        success: function(data){
            let html="";
            for(let book of data){
                html += `<td class="lead font-weight-bold border-top-0" style="font-size:20px">Ukupno: ${ (book.total == null) ? 0 : book.total } dinara</td>`;
            }
            $("#price").html(html);
        }

    });
}




function refreshView() {
    $.ajax({
        url: "index.php?page=getAllCart",
        method: "POST",
        dataType: "json",
        success: function(data){
            printProducts(data);
        },
        error: function(xhr, status, statusText){
            console.log(xhr);
            console.log(statusText);
        }
    });
}



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



function printProducts(data){

    let html="";
    for(let book of data){
        html += `<tr>
        <td><img class="w-25" src="${ book.imgSrc }" alt="${ book.imgAlt }"></td>
        <td class="lead" style="font-size:20px">${ book.name }</td>
        <td class="lead" style="font-size:20px">${ book.priceSite } dinara</td>
        <td>
        <button type="button" class="btn btn-orange text-white font-weight-light mr-2 deleteBtn" data-id="${ book.cartID }" role="button">Kupite</button>
        <button type="button" class="btn btn-orange text-white font-weight-light deleteBtn" data-id="${ book.cartID }" role="button">Obrišite</button>
        </td>
        </tr>`;
    }
    $("#table-cart").html(html);
}



