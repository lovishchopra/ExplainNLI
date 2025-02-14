(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsPitching (BoundSet BoundSet) Bool)
(declare-fun IsInGameOfBaseball (BoundSet BoundSet) Bool)
(declare-fun Throws (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsPitching a b) (IsInGameOfBaseball b c))))) (and (forall ((d BoundSet)) (forall ((e BoundSet)) (=> (IsPitching d e) (Throws d e)))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (Throws f g) (IsPitching f g)))) (forall ((h BoundSet)) (forall ((i BoundSet)) (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (Throws h i) (IsInGameOfBaseball j k))))))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (Throws a b))))))
(check-sat)
(get-model)