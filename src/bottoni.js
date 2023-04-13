$(document).ready(function () {
  /*clicked = 0;*/
  click1 = 0; /* reg */
  click2 = 0; /* corr */
  click3 = 0; /* add */
  click4 = 0; /* placeName */
  click5 = 0; /* persName */
  /*click6 = 0;*/
  click7 = 0; /* del */
  click8 = 0; /* abbr */
  /*click9 = 0;*/
  /*click10 = 0;*/
  click11 = 0; /* gap */

  function control(click, vettore, color) {
    if (click % 2 == 1) {
      for (i = 0; i <= vettore.length; i++) {
        vettore[i].style.background = color;
      }
    }

    if (click % 2 == 0) {
      for (i = 0; i <= vettore.length; i++) {
        vettore[i].style.background = "none";
      }
    }
  }

  $("reg").hide(); /*ok reg */

  $("#reg").on("click", function () {
    click1 += 1;

    $("reg").fadeIn();

    vect = $(".reg");

    if (click1 % 2 == 1) {
      $("orig").hide();
      $("reg").fadeIn();
    }

    if (click1 % 2 == 0) {
      $("orig").fadeIn();
      $("reg").hide();
    }

    control(click1, vect, "#FFA500");
  });

  $("corr").hide(); /* ok corr */
  $("#corr").on("click", function () {
    click2 += 1;

    $("corr").show();

    vect = $(".corr");

    if (click2 % 2 == 1) {
      $("sic").hide();
      $("corr").fadeIn();
    }

    if (click2 % 2 == 0) {
      $("sic").fadeIn();
      $("corr").hide();
    }

    control(click2, vect, "#E389B9");
  });

  /*$('#corr').click(function () {
    if ($(this).prop("checked") == true) {
      sics = $(".corr");

      for (i = 0; i <= sics.length; i++) {
        sics[i].style.background = "#556B2F";
      }
    } else if ($(this).prop("checked") == false) {
      for (i = 0; i <= sics.length; i++) {
        sics[i].style.background = "none";
      }
    }
  });*/

  /* placeName ok */
  $("#nomiluogo").on("click", function () {
    click4 += 1;

    vect = $(".place");

    control(click4, vect, "#29df41");
  });

  /*$('#nomiluogo').click(function () {
    if ($(this).prop("checked") == true) {
      nomiluogos = $(".place");

      for (i = 0; i <= nomiluogos.length; i++) {
        nomiluogos[i].style.background = "#29df41";
      }
    } else if ($(this).prop("checked") == false) {
      for (i = 0; i <= nomiluogos.length; i++) {
        nomiluogos[i].style.background = "none";
      }
    }
  }); */
  
  /* persName ok */
  $("#nomipersona").on("click", function () {
    click5 += 1;

    if (click5%2 ==1) {
      $(".tooltip .ht a").addClass("bold");
    
    } else {
      $(".tooltip .ht a").removeClass("bold");
    }
  });

  /*$('#nomipersona').click(function () {
    if ($(this).prop("checked") == true) {
      nomipersonas = $(".nome");

      for (i = 0; i <= nomipersonas.length; i++) {
        nomipersonas[i].style.background = "bold";
      }
    } else if ($(this).prop("checked") == false) {
      for (i = 0; i <= nomipersonas.length; i++) {
        nomipersonas[i].style.background = "none";
      }
    }
  });*/


/*istituzione*/
/*$("#orgName").on("click", function () {
  click6 += 1;

  vect = $(".istituzione");

  control(click6, vect, "#800080");
});

$('#orgName').click(function () {
  if ($(this).prop("checked") == true) {
    istituzionis = $(".istituzione");

    for (i = 0; i <= istituzionis.length; i++) {
      istituzionis[i].style.background = "#800080";
    }
  } else if ($(this).prop("checked") == false) {
    for (i = 0; i <= istituzionis.length; i++) {
      istituzionis[i].style.background = "none";
    }
  }
}); */



/*$("del").hide();
  $(".gap").hide();

  $("#del").on("click", () => {
    click6 += 1;
   


    if (click6 % 2 == 1) {
      $("del").fadeIn();
      $(".gap").show();
      $(".gap").css("background","red");
     


 }
    if (click6 % 2 == 0) {
      $("del").fadeOut();
      $(".gap").fadeIn();
    }
  });
*/



/*cancellazioni e gap ok*/
$("del").hide();
  $(".del").hide();
 

  $("#del").on("click", () => {
    click7 += 1;
    

    if (click7 % 2 == 1) {
      $("del").fadeIn();
      $(".del").show();
      $(".del").css("background");
      

 }
    if (click7 % 2 == 0) {
      $("del").fadeOut();
      $(".del").fadeOut();
    }
  });


$("gap").hide();
  $(".gap").hide();
 

  $("#gap").on("click", () => {
    click11 += 1;
    

    if (click11 % 2 == 1) {
      $("gap").fadeIn();
      $(".gap").show();
      $(".gap").css("background","red");
      

 }
    if (click11 % 2 == 0) {
      $("gap").fadeOut();
      $(".gap").fadeOut();
    }
  });


  


  $(".expan").hide(); /* ok */

/*cambia visualizzazione abbreviazioni*/
  $("#abbreviazioni").on("click", function () {
    click8 += 1;

    if (click8 % 2 == 1) {
     /*$(".expan").css("font-weight", "bold");*/
      $(".expan").fadeIn();
    }

    if (click8 % 2 == 0) {
      /*$(".abbr").css("font-weight", "normal");*/
      $(".expan").fadeOut();
    }
  });


  $('#abbreviazioni').click(function () {
    if ($(this).prop("checked") == true) {
      abbreviazionis = $(".abbr");

      for (i = 0; i <= abbreviazionis.length; i++) {
        abbreviazionis[i].style.background = "#3399FF";
      }
    } else if ($(this).prop("checked") == false) {
      for (i = 0; i <= abbreviazionis.length; i++) {
        abbreviazionis[i].style.background = "none";
      }
    }
  }); 


  /*$('.abbr').on("mouseover",function () {
    
    $(this).css("font-weight", "bold");
    $(this).next().fadeIn();

  });*/

  /*$('.abbr').on("mouseleave", function () {
  
    $(this).next().hide();
    $(this).css("font-weight", '');

  });*/


  /*$('#add').on("click",function () {

    click9+=1;

    if(click9 % 2 == 1) {
    
    $("add").fadeIn();
    $("add").css("background", "grey");
    }

    if(click9 % 2 == 0) {

      $("add").fadeIn();

    }


  });


});*/

/* add ok */
$("#add").on("click", function () {
  click3 += 1;

  vect = $(".add");

  control(click3, vect, "#32f3d3");
});

/*$('#add').click(function () {
  if ($(this).prop("checked") == true) {
    adds = $(".add");

    for (i = 0; i <= adds.length; i++) {
      adds[i].style.background = "#800080";
    }
  } else if ($(this).prop("checked") == false) {
    for (i = 0; i <= adds.length; i++) {
      adds[i].style.background = "none";
    }
  }
});*/

});