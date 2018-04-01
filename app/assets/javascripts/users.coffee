# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	$(document).on 'keyup', '#password', ->
		password = $(this).val()
		eval_opts = ["horrible", "weak", "subpar", "strong", "strongest"]
		zx_obj = zxcvbn(password)
		percentage = (1/(4/zx_obj.score))*100 + '%'
		if password.length > 0
			$('#password-strength-bar').css('width', percentage)
			if zx_obj.feedback.warning != null && zx_obj.feedback.warning != undefined
				$('#password-suggestions').text zx_obj.feedback.warning
				$('.progress-evaluator small').css('visibility', 'hidden')
				$(".evaluator-#{eval_opts[zx_obj.score]}").css('visibility', 'visible')
		else
			$('#password-suggestions').text ''
			$('#password-strength-bar').css('width', '0%')