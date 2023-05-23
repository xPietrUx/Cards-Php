$(document).ready(function () {
    
    $(".menuphonecontent").hide();
    
    $(".menulines").click(function(){
       $(".menuphonecontent").slideToggle();
    });
    
    $(".ShowMore").click(function(){
        $(this).parent().parent().addClass("active");
    });
    
    $(".ShowLess").click(function(){
        $(this).parent().parent().removeClass("active");
    });
    
    $(".AddCard").click(function(){
        $(this).parent().addClass("active");
    });
    
    $(".CancelCard").click(function(){
        $(this).parent().parent().parent().removeClass("active");
    });
    
    $(".CarsChooseH li:nth-child(1) a").mouseover(function(){
        $(".CarsChooseH #thispage").removeClass("active");
        $(".CarsChooseH li:nth-child(1) .under").addClass("active");
    });
    $(".CarsChooseH li:nth-child(1) a").mouseout(function(){
        $(".CarsChooseH li:nth-child(1) .under").removeClass("active");
        $(".CarsChooseH #thispage").addClass("active");
    });
    $(".CarsChooseH li:nth-child(2) a").mouseover(function(){
        $(".CarsChooseH #thispage").removeClass("active");
        $(".CarsChooseH li:nth-child(2) .under").addClass("active");
    });
    $(".CarsChooseH li:nth-child(2) a").mouseout(function(){
        $(".CarsChooseH li:nth-child(2) .under").removeClass("active");
        $(".CarsChooseH #thispage").addClass("active");
    });
    $(".CarsChooseH li:nth-child(3) a").mouseover(function(){
        $(".CarsChooseH #thispage").removeClass("active");
        $(".CarsChooseH li:nth-child(3) .under").addClass("active");
    });
    $(".CarsChooseH li:nth-child(3) a").mouseout(function(){
        $(".CarsChooseH li:nth-child(3) .under").removeClass("active");
        $(".CarsChooseH #thispage").addClass("active");
    });
    $(".CarsChooseH li:nth-child(4) a").mouseover(function(){
        $(".CarsChooseH #thispage").removeClass("active");
        $(".CarsChooseH li:nth-child(4) .under").addClass("active");
    });
    $(".CarsChooseH li:nth-child(4) a").mouseout(function(){
        $(".CarsChooseH li:nth-child(4) .under").removeClass("active");
        $(".CarsChooseH #thispage").addClass("active");
    });
});

