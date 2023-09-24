
const cards = document.getElementsByClassName("card");

cards.forEach(card =>{
    card.addEventListener("mouseenter",onMouseEnter);
    card.addEventListener("mouseleave",onMouseLeave);
    card.addEventListener("click",function() {
        // Visszajelzés a kedves felhasználónak, hogy valóban rákattintott 
        // Pl halványabb kiemelés mint a végleges szin és egy töltés ikon
        // Timeout is kell + ne csináljon semmit a kattintás amig töltés van

        // Retrieve the associated data when the button is clicked
        const customData = this.getAttribute("id");
        // Send this data to your PHP script using an AJAX request
        sendDataToPHP(customData, target);
    });
})




function sendDataToPHP(data, target){
    $.ajax({
        type: "POST",
        url: "toggle_state.php",
        data: { customData: data }, // Send data to PHP as a POST parameter
        success: function(response) {
            // Handle the PHP script's response
           // document.getElementById("result").textContent = response;
            // set class based ot response/ state of the tárgy
            target.classList.add()
        }
    });
}





function onMouseEnter() {
    // This function will be executed when you hover over the element
    console.log("Hovering " + event.target);
    // Use querySelectorAll with attribute selector
    const ids = event.target.getAttribute("elofeltetelek");
    ids.split(";").forEach(function(elofeltetel){
        if(elofeltetel == "") return;
        console.log(document.getElementById(elofeltetel).textContent);
        document.getElementById(elofeltetel).classList.add("highlight");
    });
}
  
function onMouseLeave() {
const ids = event.target.getAttribute("elofeltetelek");
ids.split(";").forEach(function(elofeltetel){
    if(elofeltetel == "") return;
    console.log(document.getElementById(elofeltetel).textContent);
    document.getElementById(elofeltetel).classList.remove("highlight");
});
}