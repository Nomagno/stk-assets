import xml.etree.ElementTree as ET
tree = ET.parse('quads.xml')
root = tree.getroot()
quads = []
for child in root:
    quads.append([])
    for point in child:
        points[0].append(point.tag)
    
print(quads)
