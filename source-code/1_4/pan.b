	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Phil */

	case 3: // STATE 2
		;
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 4: // STATE 6
		goto R999;
;
		
	case 5: // STATE 4
		goto R999;
;
		;
		
	case 7: // STATE 11
		;
		now.fork[ Index((((P0 *)_this)->_pid+1), 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 8: // STATE 15
		goto R999;
;
		
	case 9: // STATE 13
		goto R999;
;
		
	case 10: // STATE 24
		goto R999;

	case 11: // STATE 18
		;
		now.fork[0] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 12: // STATE 22
		goto R999;
;
		
	case 13: // STATE 20
		goto R999;
;
		;
		;
		;
		
	case 16: // STATE 30
		;
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 17: // STATE 34
		goto R999;
;
		
	case 18: // STATE 32
		goto R999;

	case 19: // STATE 38
		;
		now.fork[ Index((((P0 *)_this)->_pid+1), 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 20: // STATE 42
		goto R999;
;
		
	case 21: // STATE 40
		goto R999;
;
		;
		;
		;
		
	case 24: // STATE 48
		;
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 25: // STATE 52
		goto R999;
;
		
	case 26: // STATE 50
		goto R999;

	case 27: // STATE 56
		;
		now.fork[ Index((((P0 *)_this)->_pid+1), 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 28: // STATE 60
		goto R999;
;
		
	case 29: // STATE 58
		goto R999;
;
		;
		
	case 31: // STATE 70
		;
		p_restor(II);
		;
		;
		goto R999;
	}

