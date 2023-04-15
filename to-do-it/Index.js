const checkbox = document.getElementById('flexSwitchCheckChecked');
const myDiv = document.getElementById('myDiv');
// MyList sayfasında olan elemanların id'lerini alıyoruz.

checkbox.addEventListener('change', function () {
    if (this.checked) {
        myDiv.style.textDecoration = 'line-through';
        // Eğer checkbox seçili ise yazıların üstünü çiziyor.
        myDiv.style.textDecorationColor = 'red';
    } else {
        myDiv.style.textDecoration = 'none';
        // Eğer checkbox seçili değil ise yazıların üstünü çizmiyor.
        myDiv.style.textDecorationColor = 'initial';
    }
});

function changeColor(color) {
    document.getElementById('text').style.color = color;
}


