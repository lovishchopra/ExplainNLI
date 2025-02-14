(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWatching (BoundSet BoundSet) Bool)
(declare-fun IsMaking (BoundSet BoundSet) Bool)
(declare-fun IsOn (BoundSet BoundSet) Bool)
(declare-fun IsSet (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (exists ((e BoundSet)) (and (IsWatching b c) (and (IsMaking c d) (and (IsOn d a) (IsSet a e))))))))) (forall ((i BoundSet)) (forall ((j BoundSet)) (forall ((h BoundSet)) (=> (IsWatching h i) (IsOn j i)))))) (exists ((a BoundSet)) (IsWatching a a)))))
(check-sat)
(get-model)