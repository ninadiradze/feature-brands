<template>
  <label class="checkbox">
    <div class="checkbox__text">Jhohnson & Johnson</div>
    <input type="checkbox" />
    <span class="checkbox__mark" />
  </label>
</template>

<script>
export default {

}
</script>

<style lang="scss" scoped>
/* Customize the label (the container) */
.checkbox {
  display: block;
  position: relative;
  padding-left: 30px;
  cursor: pointer;
  font-size: 14px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.checkbox input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkbox__mark {
  position: absolute;
  top: 0;
  left: 0;
  height: 16px;
  width: 16px;
  background: #F7F8F9;
  border: 1px solid #E5E7F1;
  box-shadow: inset 0px 1px 2px rgba(0, 0, 0, 0.06);
  border-radius: 4px;
}

/* On mouse-over, add a grey background color */
.checkbox:hover input ~ .checkbox__mark {
  background-color: #E5E7F1;
}

/* When the checkbox is checked, add a blue background */
.checkbox input:checked ~ .checkbox__mark {
  background-color: #65A330;
  border-color: #65A330;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkbox__mark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.checkbox input:checked ~ .checkbox__mark:after {
  display: block;
}

/* Style the checkmark/indicator */
.checkbox .checkbox__mark:after {
  left: 6px;
  top: 2px;
  width: 3px;
  height: 7px;
  border: solid white;
  border-width: 0 2px 2px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
</style>
