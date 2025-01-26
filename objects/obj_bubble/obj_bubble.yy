{
  "$GMObject":"",
  "%Name":"obj_bubble",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_prota","path":"objects/obj_prota/obj_prota.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_bubble",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"bubble_type","filters":[],"listItems":[
        "\"rojo\"",
        "\"amarillo\"",
        "\"purpura\"",
      ],"multiselect":false,"name":"bubble_type","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"negro","varType":2,},
    {"$GMObjectProperty":"v1","%Name":"bubble_triggered","filters":[],"listItems":[],"multiselect":false,"name":"bubble_triggered","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"bubble_contact","filters":[],"listItems":[],"multiselect":false,"name":"bubble_contact","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"bubble_pop","filters":[],"listItems":[],"multiselect":false,"name":"bubble_pop","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"-1","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"bubble_hp","filters":[],"listItems":[],"multiselect":false,"name":"bubble_hp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"bubble_sprite_idle","filters":[],"listItems":[],"multiselect":false,"name":"bubble_sprite_idle","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_bubble_default","path":"sprites/spr_bubble_default/spr_bubble_default.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_bubble_default","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"bubble_sprite_pop","filters":[],"listItems":[],"multiselect":false,"name":"bubble_sprite_pop","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_bubble_pop_hurt","path":"sprites/spr_bubble_pop_hurt/spr_bubble_pop_hurt.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_bubble_pop_hurt","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"bubble_sprite_contact","filters":[],"listItems":[],"multiselect":false,"name":"bubble_sprite_contact","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_bubble_pop_colision","path":"sprites/spr_bubble_pop_colision/spr_bubble_pop_colision.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_bubble_pop_colision","varType":5,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_bubble_default",
    "path":"sprites/spr_bubble_default/spr_bubble_default.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}