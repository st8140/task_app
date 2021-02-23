'use strict'

const none = document.getElementById('edit-title');
const notice = document.getElementsByClassName('notice')

function titleNone(){
  if (notice == null) {
    none.classList.add('none');
  }
}

titleNone