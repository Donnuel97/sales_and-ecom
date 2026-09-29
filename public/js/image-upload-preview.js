function selectedImagePreview (input, previewDiv) {

    var fileList = input.files;

    if (!fileList.length) return;

    var reader = new FileReader(), imageFile = fileList[0],

    fileName = imageFile.name;

    /*reader.onload = function (e) { // this handles image preview but they want it removed
        
        previewDiv.attr('src', e.target.result);
    }

    reader.readAsDataURL(imageFile);*/
    previewDiv[0].textContent = fileName;
}

function bindPreviewFields (fieldDetails) {

    for (let detail in fieldDetails) { // `let` creates a new binding or scope for each iteration of the loop. This means `detail` won't point to the last entry. The alternative is to use an IIFE

        $(detail).change(function (e) {
            
            selectedImagePreview(this, $(fieldDetails[detail]));
        });
    }
}