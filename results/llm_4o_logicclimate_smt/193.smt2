(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun AreGrilling (BoundSet BoundSet) Bool)
(declare-fun LooksOn (BoundSet) Bool)
(declare-fun HaveBeenIn (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (AreGrilling a c) (LooksOn b))))) (and (forall ((g BoundSet)) (forall ((f BoundSet)) (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (AreGrilling f g) (HaveBeenIn h i)))))) (forall ((j BoundSet)) (forall ((l BoundSet)) (forall ((m BoundSet)) (forall ((k BoundSet)) (=> (HaveBeenIn j k) (AreGrilling l m)))))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (HaveBeenIn d e))))))
(check-sat)
(get-model)