def app_me(env, st_head):
	headers = ['Content-Type', 'text/plain']
	body = ''
	for i in env['QUERY_STRING']:
		body += i +'\n'
	st_head('200 OK', headers)
	return body