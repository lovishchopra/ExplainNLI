(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsDressedIn (BoundSet BoundSet) Bool)
(declare-fun IsWrestlingOn (BoundSet BoundSet) Bool)
(declare-fun IsWrestling (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsDressedIn a b) (IsWrestlingOn a c))))) (forall ((f BoundSet)) (forall ((e BoundSet)) (forall ((g BoundSet)) (=> (IsWrestlingOn e f) (IsWrestling g)))))) (exists ((d BoundSet)) (IsWrestling d)))))
(check-sat)
(get-model)