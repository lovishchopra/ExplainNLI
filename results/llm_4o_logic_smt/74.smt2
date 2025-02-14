(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsTooLittle (BoundSet) Bool)
(declare-fun IsUnrepresentative (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun MakesClaim (BoundSet) Bool)
(declare-fun CannotBeMade (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (and (exists ((a BoundSet)) (( (or (IsTooLittle a) (IsUnrepresentative a)))) (not (MakesClaim b)))) (exists ((c BoundSet)) (CannotBeMade c)))))
(check-sat)
(get-model)