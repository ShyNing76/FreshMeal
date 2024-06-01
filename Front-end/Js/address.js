const addressForm = document.getElementById('addressForm');
const updateAddress = document.getElementById('updateAddressForm');


document.getElementById('addNewAddressBtn').addEventListener("click", () => {
    addressForm.style.display = 'flex';
});

document.getElementById('update-button').addEventListener('click', () => {
    updateAddress.style.display = 'flex';
})

document.getElementById('returnBtn').addEventListener('click', () => {
    addressForm.style.display = 'none';
    updateAddress.style.display = 'none';
});

document.getElementById('finishBtn').addEventListener('click', () => {
    addressForm.style.display = 'none';
    updateAddress.style.display = 'none';
});


