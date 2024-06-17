import { prisma } from "./prisma";

export const getBsu = async () => {
    try {
        const bsu = await prisma.bSU.findMany();
        return bsu;
    } catch (err) {
        
    }
}