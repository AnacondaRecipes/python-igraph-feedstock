import igraph as ig

G = ig.Graph.Famous('zachary')
G['layout'] = G.layout_fruchterman_reingold()
ig.plot(G, 'test.pdf')

g = ig.Graph.Tree(127,2)
g.write_graphml('test.graphml')
tree = ig.Graph.Read_GraphML('test.graphml')
