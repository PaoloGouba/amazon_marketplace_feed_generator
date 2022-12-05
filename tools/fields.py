class Field():
    def __init__(self,name,description=""):
        self.name = name
        self.description = description
        return
    
    def create_field(attribute_code,attribute_description):
        new_field = Field(attribute_code,attribute_description)
        return new_field
    
    
class DimensionField(Field):
    
    def __init__(self, name, description,unit_of_mesure):
        super().__init__(name, description,)
        self.unit_of_mesure = unit_of_mesure
        
        return    
    
    def create_field(attribute_code,attribute_description):
        
        unit_of_mesure = attribute_code + 'UnitOfMesure'
        new_field = DimensionField(attribute_code,attribute_description,unit_of_mesure)
        
        return new_field
    
    
ciao = Field.create_field('EHi','Yo')

print(ciao.name)
print(ciao.description)

