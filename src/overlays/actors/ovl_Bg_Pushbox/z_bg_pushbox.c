/*
 * File: z_bg_pushbox.c
 * Overlay: ovl_Bg_Pushbox
 * Description:
 */

#include "z_bg_pushbox.h"

#define FLAGS 0x00000000

void func_808A8AE0(BgPushbox* this, ActorFunc actionFunc);
void BgPushbox_Init(BgPushbox* this, GlobalContext* globalCtx);
void BgPushbox_Destroy(BgPushbox* this, GlobalContext* globalCtx);
void func_808A8BAC(BgPushbox* this, GlobalContext* globalCtx);
void BgPushbox_Update(BgPushbox* this, GlobalContext* globalCtx);
void BgPushbox_Draw(BgPushbox* this, GlobalContext* globalCtx);

const ActorInit Bg_Pushbox_InitVars = {
    ACTOR_BG_PUSHBOX,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(BgPushbox),
    (ActorFunc)BgPushbox_Init,
    (ActorFunc)BgPushbox_Destroy,
    (ActorFunc)BgPushbox_Update,
    (ActorFunc)BgPushbox_Draw,
};

extern u32 D_06000000;
extern u32 D_06000350;

static InitChainEntry initChain[] = {
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_STOP),
};

void func_808A8AE0(BgPushbox* this, ActorFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgPushbox_Init(BgPushbox* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u32 local_c = 0;
    Actor* thisx = &this->dyna.actor;

    Actor_ProcessInitChain(thisx, initChain);
    func_80043480(&this->dyna, 0);
    func_80041880(&D_06000350, &local_c);
    this->dyna.dynaPolyId = func_8003EA74(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    func_808A8AE0(this, &func_808A8BAC);
}

void BgPushbox_Destroy(BgPushbox* this, GlobalContext* globalCtx) {
    func_8003ED58(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_808A8BAC(BgPushbox* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    thisx->speedXZ += this->dyna.unk_150 * 0.2f;
    thisx->speedXZ = (thisx->speedXZ < -1.0f) ? -1.0f : ((thisx->speedXZ > 1.0f) ? 1.0f : thisx->speedXZ);
    Math_ApproxF(&thisx->speedXZ, 0.0f, 0.2f);
    thisx->posRot.rot.y = this->dyna.unk_158;
    Actor_MoveForward(thisx);
    func_8002E4B4(globalCtx, thisx, 20.0f, 40.0f, 40.0f, 0x1D);
}

void BgPushbox_Update(BgPushbox* this, GlobalContext* globalCtx) {
    this->actionFunc(this, globalCtx);
    func_8002DF90(this);
}

void BgPushbox_Draw(BgPushbox* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_pushbox.c", 263);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_pushbox.c", 269),
              G_MTX_NOPUSH | G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06000000);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_pushbox.c", 272);
}
