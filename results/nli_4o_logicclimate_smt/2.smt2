(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun ProjectedToRise (BoundSet) Bool)
(declare-fun WipesAwayBeaches (BoundSet BoundSet) Bool)
(declare-fun WipesAwayCoastalProperties (BoundSet BoundSet) Bool)
(declare-fun WipedAway (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (ProjectedToRise c) (and (WipesAwayBeaches c a) (WipesAwayCoastalProperties c b)))))) (and (forall ((e BoundSet)) (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (WipesAwayBeaches e f) (WipedAway g))))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (forall ((j BoundSet)) (=> (WipesAwayBeaches h i) (WipedAway j))))) (and (forall ((l BoundSet)) (forall ((k BoundSet)) (forall ((m BoundSet)) (=> (WipedAway k) (WipesAwayBeaches l m))))) (and (forall ((p BoundSet)) (forall ((o BoundSet)) (forall ((n BoundSet)) (=> (WipedAway n) (WipesAwayCoastalProperties o p))))) (forall ((r BoundSet)) (forall ((q BoundSet)) (forall ((s BoundSet)) (=> (WipesAwayCoastalProperties q r) (WipedAway s)))))))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (WipedAway a) (WipedAway b)))))))
(check-sat)
(get-model)