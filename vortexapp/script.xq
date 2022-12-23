let $ref := fn:doc('./SourcesList.xml')/list/item/text()
let $resquest := <http:request method='get' href='{$ref}/xml'/>
let $response := http:send-request($resquest)[2]
return db:create('nonnos', $response, 'nonnos', map { 'ftindex': true() } )

