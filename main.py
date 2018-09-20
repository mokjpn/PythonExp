from bottle import route,run,template,request,post


@route('/')
@route('/form')

def form():
    return template('default', message=[])


@post('/check')
def do_check(name='default'):
    m = []
    formc = {}
    item1 = request.forms.get('item1')
    item2 = request.forms.get('item2')
    item3 = request.forms.get('item3')

    # Item 1 validator
    try:
        v = int(item1)
        if not (v >= 100 and v < 1000): 
            m.append('Item 1 should be >=100 and <1000')
            formc['item1'] = 'has-error'
    except:
            m.append('Item 1 should be a number')
            formc['item1'] = 'has-error'

    # Item 2 validator
    v = item2
    if item3 is None and item2 == '':
        m.append('Item 2 should not be empty when item 3 is not checked')
        formc['item2'] = 'has-error'
        formc['item3'] = 'has-error'
    if not item3 is None and item2 != '':
        m.append('Item 2 should be empty when item 3 is checked')
        formc['item2'] = 'has-error'
        formc['item3'] = 'has-error'

    if len(m) == 0:
        m  = ['No error']

    d = {'item1':item1, 'item2':item2, 'item3':item3, 'message':m, 'formc':formc}
    return template(name, d)


run(host='localhost',port=8080)

