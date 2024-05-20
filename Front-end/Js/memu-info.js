


document.addEventListener('DOMContentLoaded', () => {
    const decrementButton = document.getElementById('decrement');
    const incrementButton = document.getElementById('increment');
    const quantityInput = document.querySelector('.menu-info-quantity input');

    decrementButton.addEventListener('click', () => {
        let currentValue = parseInt(quantityInput.value);
        if (!isNaN(currentValue) && currentValue > 1) {
            quantityInput.value = currentValue - 1;
        }
    });

    incrementButton.addEventListener('click', () => {
        let currentValue = parseInt(quantityInput.value);
        if (!isNaN(currentValue)) {
            quantityInput.value = currentValue + 1;
        }
    });
});


// Selection button js
let mealKit = document.getElementById("meal-kit");
let prepareMeal = document.getElementById("prepare-meal");

mealKit.addEventListener("click", () => {
    toggleClass(mealKit, prepareMeal);
})

prepareMeal.addEventListener("click", () => {
    toggleClass(prepareMeal, mealKit);
})



function toggleClass(button1, button2){
    button1.classList.add('enable-selection');
    button2.classList.remove('enable-selection');
}
