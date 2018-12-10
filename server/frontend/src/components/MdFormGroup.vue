<template>
  <div
    :class="[
      baseClass,
      isFocused ? inputFocus : '',
      isFilled ? inputFilled : '',
      isInvalid ? inputInvalid : ''
      ]">
    <i v-if="inputIcon" class="material-icons md-icon prefix">{{ inputIcon }}</i>
    <input
      @blur="blur"
      @focus="focus"
      autocomplete="off"
      hint="false"
      required="required"
      aria-required="true"
      :type="inputType"
      :name="inputName"
      :id="inputId"
      class="string required md-input md-field-input" />
    <label :for="inputId" class="required md-field-label">{{ inputLabel }}</label>
    <div class="md-field-ripple-line"></div>
  </div>
</template>

<script>
export default {
  name: 'MdFormGroup',
  data() {
    return {
      baseClass:'md-field-group md-input-container string required user_login md-icon-float md-icon-left',
      inputFocus: 'md-input-focused',
      isFocused: false,
      inputFilled: 'md-input-has-value',
      isFilled: false,
      inputInvalid: 'md-input-invalid',
      isInvalid: false
    }
  },
  props: {
    inputType: String,
    inputName: String,
    inputId: String,
    inputLabel: String,
    inputIcon: String
  },
  methods: {
    blur(e) {
      this.isFocused = false
      this.isFilled = !e.target.validity.valueMissing
      this.isInvalid = e.target.required && !e.target.checkValidity()
    },
    focus(e) {
      this.isFocused = true
    }
  }
}
</script>

