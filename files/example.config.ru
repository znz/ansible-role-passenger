# -*- coding: utf-8 -*-
require 'erb'
require 'rack/utils'
run Proc.new { |env|
  title = 'passenger rack env'
  title = Rack::Utils.escape_html(title)
  html = ERB.new(<<-ERB).result(binding)
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title><%= title %></title>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<h1><%= title %></h1>
<table class="table table-striped table-hover">
<% env.each do |k, v| %>
<tr>
<th><%= Rack::Utils.escape_html(k) %>
<td><%= Rack::Utils.escape_html(v) %>
<% end %>
</table>
</div>
</body>
</html>
  ERB
  [ '200', { 'Content-Type' => 'text/html; charset=utf-8' }, html ]
}
