(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsWhite (BoundSet) Bool)
(declare-fun IsInRoom (BoundSet BoundSet) Bool)
(declare-fun IsFighting (BoundSet BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun IsBlack (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (and (exists ((b BoundSet)) (( (and (IsWhite a) (and (IsInRoom a c) (IsFighting a b))))) (and (IsBlack b) (and (IsInRoom b c) (IsFighting b a)))))) (and (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsFighting e e) (IsWhite f)))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsFighting g g) (IsBlack h)))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (IsFighting i i) (IsInRoom j k))))) (forall ((l BoundSet)) (forall ((m BoundSet)) (forall ((n BoundSet)) (=> (IsFighting l l) (IsInRoom m n))))))))) (exists ((d BoundSet)) (IsFighting d d)))))
(check-sat)
(get-model)