$(function() {
  $("#job_job_type_contract").click(function() {
      $('#duration_field').slideDown();
  });
  $("#job_job_type_temp_to_hire").click(function() {
      $('#duration_field').slideUp();
  });
  $("#job_job_type_direct_hire").click(function() {
      $('#duration_field').slideUp();
  });
});
