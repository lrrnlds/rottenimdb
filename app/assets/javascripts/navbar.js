// Creates and Destroys the Dropdown for the genre button on the navbar

function showFunction () {
  document.getElementById('myDropdown').classList.toggle('show')
}

// Method for filtering the genres on the dropdown search bar

function filterFunction () {
  var input, filter, ul, li, a, i
  input = document.getElementById('myInput')
  filter = input.value.toUpperCase()
  div = document.getElementById('myDropdown')
  a = div.getElementsByTagName('a')
  for (i = 0; i < a.length; i++) {
    if (a[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = ''
    } else {
      a[i].style.display = 'none'
    }
  }
}
