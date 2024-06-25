const addressForm = document.getElementById('addressForm');
const updateAddress = document.getElementById('updateAddressForm');


document.getElementById('addNewAddressBtn').addEventListener("click", () => {
    addressForm.style.display = 'flex';
});

document.querySelectorAll('.update-button').forEach(button => {
    button.addEventListener('click', () => {
        updateAddress.style.display = 'flex';
    })
})

document.getElementById('returnBtn').addEventListener('click', () => {
    addressForm.style.display = 'none';
    updateAddress.style.display = 'none';
});

document.getElementById('finishBtn').addEventListener('click', () => {
    addressForm.style.display = 'none';
    updateAddress.style.display = 'none';
});


document.addEventListener("DOMContentLoaded", function() {
    const addressContainers = document.querySelectorAll(".address-contain");

    addressContainers.forEach(container => {
        container.addEventListener("click", function() {
            // Remove checked class from all radio buttons
            addressContainers.forEach(item => {
                const radioButton = item.querySelector(".stardust-radio");
                radioButton.classList.remove("radio-checked");
                radioButton.querySelector(".stardust-radio-button").classList.remove("radio-button-checked");
                radioButton.querySelector(".stardust-radio-button-outer__circle").classList.remove("radio-circle-checked");
            });

            // Add checked class to the clicked radio button
            const radioButton = container.querySelector(".stardust-radio");
            radioButton.classList.add("radio-checked");
            radioButton.querySelector(".stardust-radio-button").classList.add("radio-button-checked");
            radioButton.querySelector(".stardust-radio-button-outer__circle").classList.add("radio-circle-checked");
        });
    });
});
