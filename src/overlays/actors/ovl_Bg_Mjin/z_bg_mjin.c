/*
 * File: z_bg_mjin.c
 * Overlay: ovl_Bg_Mjin
 * Description: Warp Pad
 */

#include "z_bg_mjin.h"

#define FLAGS 0x00000010

void BgMjin_SetupAction(BgMjin* this, ActorFunc actionFunc);
void BgMjin_Init(BgMjin* this, GlobalContext* globalCtx);
void BgMjin_Destroy(BgMjin* this, GlobalContext* globalCtx);
void func_808A0850(BgMjin* this, GlobalContext* globalCtx);
void func_808A0920(BgMjin* this, GlobalContext* globalCtx);
void BgMjin_Update(BgMjin* this, GlobalContext* globalCtx);
void BgMjin_Draw(BgMjin* this, GlobalContext* globalCtx);

const ActorInit Bg_Mjin_InitVars = {
    ACTOR_BG_MJIN,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgMjin),
    (ActorFunc)BgMjin_Init,
    (ActorFunc)BgMjin_Destroy,
    (ActorFunc)BgMjin_Update,
    NULL,
};

extern u32 D_06000000;
extern u32 D_06000140;
extern u32 D_06000330;
extern u32 D_06000658;

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 400, ICHAIN_STOP),
};

static s16 objectTbl[] = { OBJECT_MJIN_FLASH, OBJECT_MJIN_DARK, OBJECT_MJIN_FLAME,
                           OBJECT_MJIN_ICE,   OBJECT_MJIN_SOUL, OBJECT_MJIN_WIND };

void BgMjin_SetupAction(BgMjin* this, ActorFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgMjin_Init(BgMjin* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    s8 objBankIndex;

    Actor_ProcessInitChain(thisx, initChain);
    objBankIndex = Object_GetIndex(&globalCtx->objectCtx, (thisx->params != 0 ? OBJECT_MJIN : OBJECT_MJIN_OKA));
    this->objBankIndex = objBankIndex;
    if (objBankIndex < 0) {
        Actor_Kill(thisx);
    } else {
        BgMjin_SetupAction(this, &func_808A0850);
    }
}

void BgMjin_Destroy(BgMjin* this, GlobalContext* globalCtx) {
    func_8003ED58(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_808A0850(BgMjin* this, GlobalContext* globalCtx) {
    u32 local_c;
    u32 collision;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex)) {
        local_c = 0;
        this->dyna.actor.flags &= ~0x10;
        this->dyna.actor.objBankIndex = this->objBankIndex;
        Actor_SetObjectDependency(globalCtx, &this->dyna.actor);
        func_80043480(&this->dyna.actor, 0);
        collision = this->dyna.actor.params != 0 ? &D_06000658 : &D_06000330;
        func_80041880(collision, &local_c);
        this->dyna.dynaPolyId =
            func_8003EA74(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, local_c);
        BgMjin_SetupAction(this, &func_808A0920);
        this->dyna.actor.draw = &BgMjin_Draw;
    }
}

void func_808A0920(BgMjin* this, GlobalContext* globalCtx) {
}

void BgMjin_Update(BgMjin* this, GlobalContext* globalCtx) {
    this->actionFunc(this, globalCtx);
}

void BgMjin_Draw(BgMjin* this, GlobalContext* globalCtx) {
    s32 objBankIndex;
    u32 dlist;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];
    s32 pad;

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_mjin.c", 250);
    if (this->dyna.actor.params != 0) {
        objBankIndex = Object_GetIndex(&globalCtx->objectCtx, objectTbl[this->dyna.actor.params - 1]);
        if (objBankIndex >= 0) {
            gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[objBankIndex].segment);
        }
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(&D_06000000));
        dlist = &D_06000330;
    } else {
        dlist = &D_06000140;
    }
    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_mjin.c", 285),
              G_MTX_NOPUSH | G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, dlist);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_mjin.c", 288);
}
