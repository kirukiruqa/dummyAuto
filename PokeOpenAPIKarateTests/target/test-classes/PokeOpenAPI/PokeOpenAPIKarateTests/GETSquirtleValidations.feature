Feature: Squirtle validation in Pokemon API

Background:
And def headerParam_Squirtle = read('HeaderSquirtle.json')
And def requestParam_Squirtle = read('RequestSquirtle.json')
And def hostUrl_Squirtle = 'https://pokeapi.co'
And def resourtPath_Squirtle = '/api/v2/pokemon/squirtle'

@squirtleSanity
Scenario: To verify Game Indices array objects in Squirtle API

Given url hostUrl_Squirtle+resourtPath_Squirtle
And headers headerParam_Squirtle
And request requestParam_Squirtle
And method GET
Then status 200

